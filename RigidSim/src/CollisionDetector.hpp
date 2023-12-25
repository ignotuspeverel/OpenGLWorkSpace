#ifndef _COLLISIONDETECTOR_HPP_
#define _COLLISIONDETECTOR_HPP_


#include "Mesh.h"
#include "OBB.hpp"
#include <vector>
#include <glm/glm.hpp>
#include <glm/ext.hpp>

enum CollisionType 
{
    VERTEX_FACE,
    EDGE_FACE,
    FACE_FACE,
    OTHER
};

// Collision information structure
struct CollisionInfo 
{
    bool hasCollision;
    CollisionType type;      
    glm::vec3 point;   
    glm::vec3 normal;  
    float depth;            
    std::shared_ptr<Mesh> meshPtr1;          
    std::shared_ptr<Mesh> meshPtr2;            
};


class CollisionDetector 
{
public:
    // Project an obb onto an axis and return the min and max values
    void projectOBB(const OBB &obb, const glm::vec3 &axis, float &min, float &max);

    // Apply penetration correction ONLY FOR THE MOVING RIGID
    void applyPenetrationCorrection(const CollisionInfo &info, float ratio, glm::mat4 &worldMat);

    // Find the contact point 
    // ONLY FOR VERTEX/EDGE/FACE - FACE COLLISIONS WITH ONE MOVING RIGID AND THE FLOOR / WALL /BOUNDARY
    // TODO: implement for other types of collisions 
    void ContactPointFace(const OBB &obb1, const OBB &obb2, CollisionInfo &info, float threshold);

    // Check for collision between two meshes: easy implementation for 2 meshes
    CollisionInfo SATcheckCollision(std::shared_ptr<Mesh> &mesh1, 
                                    std::shared_ptr<Mesh> &mesh2,
                                    glm::mat4 &worldMat1,
                                    glm::mat4 &worldMat2);

    // Check for collisions within a list of meshes
    // TODO: can be optimized by using a spatial data structure: octree, BVH, etc.
    std::vector<CollisionInfo> checkCollisions(const std::vector<Mesh>& meshes);
};

#endif  /* _COLLISIONDETECTOR_HPP_ */