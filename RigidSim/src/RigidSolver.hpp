#ifndef _RIGIDSOLVER_HPP_
#define _RIGIDSOLVER_HPP_

#include <glm/ext/matrix_transform.hpp>

#include "Vector3.hpp"
#include "Matrix3x3.hpp"
#include "quaternion.hpp"
#include "CollisionDetector.hpp"

struct BodyAttributes
{
    BodyAttributes() : X(0, 0, 0), R(Mat3f::I()), P(0, 0, 0), L(0, 0, 0),
                       V(0, 0, 0), omega(0, 0, 0), F(0, 0, 0), tau(0, 0, 0) {}

    glm::mat4 worldMat() const
    {
        return glm::mat4( // column-major
            R(0, 0), R(1, 0), R(2, 0), 0,
            R(0, 1), R(1, 1), R(2, 1), 0,
            R(0, 2), R(1, 2), R(2, 2), 0,
            X[0], X[1], X[2], 1);
    }

    tReal M;         // mass
    Mat3f I0, I0inv; // inertia tensor and its inverse in body space
    Mat3f Iinv;      // inverse of inertia tensor

    // rigid body state
    Vec3f X; // position
    Mat3f R; // rotation
    Vec3f P; // linear momentum
    Vec3f L; // angular momentum
    Quaternionf q; // quaternion

    // auxiliary quantities
    Vec3f V;     // linear velocity
    Vec3f omega; // angular velocity
    Quaternionf omega_q; // angular velocity in quaternion

    // force and torque
    Vec3f F;   // force
    Vec3f tau; // torque

    // mesh's vertices in body space
    std::vector<Vec3f> vdata0;
};

class Box : public BodyAttributes
{
public:
    explicit Box(
        const tReal w = 1.0, const tReal h = 1.0, const tReal d = 1.0, const tReal dens = 10.0,
        const Vec3f v0 = Vec3f(0, 0, 0), const Vec3f omega0 = Vec3f(0, 0, 0)) : width(w), height(h), depth(d)
    {
        V = v0;         // initial velocity
        omega = omega0; // initial angular velocity

        // TODO: calculate physical attributes
        M = dens * w * h * d;                                             // mass = density * volume(widht * height * depth)
        I0 = Mat3f(Vec3f(
            M / 12.0 * (h * h + d * d),
            M / 12.0 * (w * w + d * d),
            M / 12.0 * (w * w + h * h)));                                 // inertia tensor in body space using matrix3x3(vec3 &diag) constructor
        I0inv = I0.inverse();                                                 
        Iinv = R * I0inv * R.transpose();                                 // inertia tensor inverse in world space            

        // vertices data (8 vertices)
        vdata0.push_back(Vec3f(-0.5 * w, -0.5 * h, -0.5 * d));
        vdata0.push_back(Vec3f(0.5 * w, -0.5 * h, -0.5 * d));
        vdata0.push_back(Vec3f(0.5 * w, 0.5 * h, -0.5 * d));
        vdata0.push_back(Vec3f(-0.5 * w, 0.5 * h, -0.5 * d));

        vdata0.push_back(Vec3f(-0.5 * w, -0.5 * h, 0.5 * d));
        vdata0.push_back(Vec3f(0.5 * w, -0.5 * h, 0.5 * d));
        vdata0.push_back(Vec3f(0.5 * w, 0.5 * h, 0.5 * d));
        vdata0.push_back(Vec3f(-0.5 * w, 0.5 * h, 0.5 * d));
    }

    // rigid body property
    tReal width, height, depth;
};

class RigidSolver
{
public:
    explicit RigidSolver(
        BodyAttributes *body0 = nullptr, const Vec3f g = Vec3f(0, 0, 0)) : body(body0), _g(g), _step(0), _sim_t(0) {}

    void init(BodyAttributes *body0)
    {
        body = body0;
        _step = 0;
        _sim_t = 0;
    }

    void step(const tReal dt, const CollisionInfo &info)
    {
        std::cout << "t=" << _sim_t << " (dt=" << dt << ")" << std::endl;

        computeForceAndTorque();

        if (info.hasCollision)
        {
            computeCollisionResponse(info.point, info.normal, dt);
        }
        else
        {
            normalUpdate(dt);
        }

        ++_step;
        _sim_t += dt;
    }

    BodyAttributes *body;

private:
    void computeForceAndTorque()
    {
        // TODO: force and torque calculation
        body->F = _g * body->M;
        body->tau = Vec3f(0, 0, 0);

        // TODO: instance force at the very first step
        if (_step == 1)
        {
            body->F = Vec3f(0.0, 0.0, 0.0);
            body->tau = (body->R * body->vdata0[0] - body->X).crossProduct(body->F);   // torque = (r - x) x F
        }
    }

    void normalUpdate(const tReal dt)
    {
        body->P += dt * body->F;                                                      // p = p + dt * F
        body->L += dt * body->tau;                                                    // L = L + dt * tau
        body->X += dt * body->P / body->M;                                            // x = x + dt * p / m

        body->V = body->P / body->M;                                                  // v = p / m
        body->Iinv = body->R * body->I0inv * body->R.transpose();                     // Iinv = R * I0inv * R^T
        body->omega = body->Iinv * body->L;                                           // omega = Iinv * L
        //body->R = body->R + dt * (body->omega).crossProductMatrix() * body->R;        // R = R + dt * [omega] x R

        body->omega_q = Quaternionf(0, body->omega);
        body->q = body->q + 0.5 * dt * body->omega_q * body->q;                       // q = q + 0.5 * dt * omega_q * q
        body->q.normalize();                                                          // q = q / |q|
        body->R = body->q.toRotMat();  
         
    }

    void computeCollisionResponse(const glm::vec3 &cp, const glm::vec3 &cn, const tReal dt)
    {
        Vec3f n = Vec3f(cn.x, cn.y, cn.z).normalize();                                  // collision normal, the direction is from floor to body
        Vec3f p = Vec3f(cp.x, cp.y, cp.z);                                              // collision point

        // calculate the relative velocity
        Vec3f v1 = body->V + body->omega.crossProduct(p - body->X);                     // v1 = v + omega x (p - x)
        Vec3f v2 = Vec3f(0, 0, 0);                                                      // We know here that the floor is static
        tReal vrel = n.dotProduct(v1 - v2);                                             // vrel = n (v1 - v2)                  

        // handle the colliding contacts

        if (vrel > -0.01f)                                                    
        {
            std::cout <<"------------------------------------------" << std::endl;
            std::cout << "Vrel > 0 : Separating." << std::endl;
            std::cout << "the collision point is:" << p << std::endl;
            std::cout << "the force is:" << body->F << std::endl; 
            std::cout << "the speed is:" << body->V << std::endl;
            std::cout << "the velocity is:" << v1 << std::endl;
            std::cout << "normal = " << n << std::endl;
            std::cout << "Vrel = " << vrel  << std::endl;
            std::cout << "Vrel > 0 : Nothing to do." << std::endl;
            normalUpdate(dt);
        } 

        else                                                 
        {
            // calculate the impulse
            std::cout <<"------------------------------------------" << std::endl;
            std::cout << "Vrel < 0 : Collision detected." << std::endl;
            std::cout << "the velocity is of cp:" << v1 << std::endl;
            std::cout << "Vrel = " << vrel  << std::endl;
            std::cout << "the collision point is:" << p << std::endl;
            std::cout << "normal is:" << n << std::endl;

            tReal e = 0.65;                                                              // coefficient of restitution
            tReal j = -(1 + e) * vrel /
                     ((1 / body->M) + (body->Iinv * (p - body->X).crossProduct(n)).crossProduct(p - body->X).dotProduct(n));

            
            // calculate the force and torque
            Vec3f J = j * n;                                                             // J = j * n
            std::cout << "the impulse is:" << J << std::endl;
            body->tau = (p - body->X).crossProduct(J);                                   // tau = (p - x) x J
            body->P += J;                                                                // p = p + J
            body->L += body->tau;                                                        // L = L + tau
            body->omega = body->Iinv * body->L;                                          // omega = Iinv * L                  

            // calculate the separating velocity and acceleration
            Vec3f a_rel = (body->F / body->M);                                           // a_rel = F / m
            Vec3f omega_delta = body->Iinv * (body->L.crossProduct(body->omega)) + body->Iinv*body->tau; // omega_delta = Iinv * (L x omega) + Iinv * tau
            Vec3f a_acc = a_rel + omega_delta.crossProduct(p - body->X) + body->omega.crossProduct(body->omega.crossProduct(p - body->X)); // a_acc = a_rel + omega_delta x (p - x) + omega x (omega x (p - x))
            tReal a_sep = a_acc.dotProduct(n);                                           // a_sep = a_rel * n

            if (a_sep < 0.0f)                                                            // if a_sep < 0
            {
                Vec3f pointOnPlane = Vec3f(0.0, -1.0, 0.0);
                tReal penetration = (p - pointOnPlane).dotProduct(n);                         // penetration = (p - x) * n
                if (penetration > 0.0f)
                {
                    std::cout << "nothing to do" << std::endl;
                }
                else
                {
                    std::cout << "penetration is:" << penetration << std::endl;
                    tReal requiredJ = -penetration / dt * body->M / 22.5;                                  // requiredJ = -penetration / dt
                    Vec3f J_sep1 = requiredJ * n;                                          // J_sep = requiredJ * n
                    body->P += J_sep1;                                                     // p = p + J_sep
                }
                tReal j_sep = -a_sep * dt * body->M * 1; 
                Vec3f J_sep = j_sep * n;                                                 // J_sep = j_sep * n
                body->P += J_sep;                                                        // p = p + J_sep
                body->L += (p - body->X).crossProduct(J_sep);                            // L = L + (p - x) x J_sep
            }
            
            body->P += dt * body->F;                                                     // p = p + dt * F
            body->L += dt * body->tau;                                                   // L = L + dt * tau

            std::cout << "p is:" << body->P << std::endl;
            body->V = body->P / body->M;                                                 // v = p / m 
            std::cout << "v is:" << body->V << std::endl;                                
            body->X += dt * body->V;                                                     // x = x + dt * p / m
            body->omega = body->Iinv * body->L;                                          // omega = Iinv * L
            body->omega_q = Quaternionf(0, body->omega);
            body->q = body->q + 0.5 * dt * body->omega_q * body->q;                      // q = q + 0.5 * dt * omega_q * q
            body->q.normalize();                                                         // q = q / |q|
            body->R = body->q.toRotMat();                                    
        }
    }

    // simulation parameters
    Vec3f _g;     // gravity
    tIndex _step; // step count
    tReal _sim_t; // simulation time
};

#endif /* _RIGIDSOLVER_HPP_ */
