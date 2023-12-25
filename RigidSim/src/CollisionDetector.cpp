#include "CollisionDetector.hpp"
#include "Mesh.h"
#include "OBB.hpp"

#include <iostream>
#include <vector>
#include <glm/glm.hpp>
#include <glm/ext.hpp>

// Project an obb onto an axis and return the min and max values
void CollisionDetector::projectOBB(const OBB &obb, const glm::vec3 &axis, float &min, float &max)
{
    glm::vec3 vertex[8];
    for (int i = 0; i < 8; ++i) 
    {
        glm::vec3 offset = obb.Rotation * glm::vec3(obb.halfSize.x * ((i & 1) ? 1.0f : -1.0f),
                                                    obb.halfSize.y * ((i & 2) ? 1.0f : -1.0f),
                                                    obb.halfSize.z * ((i & 4) ? 1.0f : -1.0f));
        vertex[i] = obb.center + offset;
    }
    min = max = glm::dot(axis, vertex[0]);
    for (int i = 1; i < 8; ++i) 
    {
        float projection = glm::dot(axis, vertex[i]);
        min = std::min(min, projection);
        max = std::max(max, projection);
    }
};

void CollisionDetector::ContactPointFace(const OBB &obb1, const OBB &obb2, CollisionInfo &info, float threshold)
{
    std::vector<glm::vec3> outVertex;

    glm::vec3 vertex[8];
    for (int i = 0; i < 8; ++i) 
    {
        glm::vec3 offset = obb1.Rotation * glm::vec3(obb1.halfSize.x * ((i & 1) ? 1.0f : -1.0f),
                                                    obb1.halfSize.y * ((i & 2) ? 1.0f : -1.0f),
                                                    obb1.halfSize.z * ((i & 4) ? 1.0f : -1.0f));
        vertex[i] = obb1.center + offset;
    }
    glm::vec3 pointOnPlane = obb2.center;

    float d = FLT_MAX;

    for (int i = 0; i < 8; ++i) 
    {
        glm::vec3 v = vertex[i] - pointOnPlane;
        float distance = glm::dot(v, info.normal);
        if (distance < d) 
        {
            d = distance;
        }
    }

    for (int i = 0; i < 8; ++i) 
    {
        glm::vec3 v = vertex[i] - pointOnPlane;
        float distance = glm::dot(v, info.normal);
        if (distance < d + threshold) 
        {
            outVertex.push_back(vertex[i]);
        }
    }

    // check the result
    if (outVertex.size() == 0) 
    {
        std::cout << "Error: no contact point found!" << std::endl;
    }
    else if (outVertex.size() == 1) 
    {
        std::cout << "One contact point found!" << std::endl;
        info.point = outVertex[0];
        info.type = VERTEX_FACE;
    }
    else if (outVertex.size() == 2) 
    {
        std::cout << "Two contact points found!" << std::endl;
        info.point = (outVertex[0] + outVertex[1]) * 0.5f;
        info.type = EDGE_FACE;
    }
    else if (outVertex.size() == 4) 
    {
        std::cout << "Four contact points found!" << std::endl;
        info.point = (outVertex[0] + outVertex[1] + outVertex[2] + outVertex[3]) * 0.25f;
        info.type = FACE_FACE;
    }
    else 
    {
        std::cout << "Error: too many contact points found!" << std::endl;
        info.point = glm::vec3(0.0f);
        info.type = OTHER;
    }
   
};

CollisionInfo CollisionDetector::SATcheckCollision(std::shared_ptr<Mesh> &mesh1, 
                                                   std::shared_ptr<Mesh> &mesh2,
                                                   glm::mat4 &worldMat1,
                                                   glm::mat4 &worldMat2)
{
    CollisionInfo info;
    info.hasCollision = false;
    info.depth = FLT_MAX;

    OBB obb1 = OBB::ComputeOBBfromMesh(mesh1, worldMat1);
    OBB obb2 = OBB::ComputeOBBfromMesh(mesh2, worldMat2);
    
    // find the axis: 15 axes, 3 from each mesh's OBB, 9 from cross product of each pair of axes
    glm::vec3 axes1[] = {glm::vec3(obb1.Rotation[0]), glm::vec3(obb1.Rotation[1]), glm::vec3(obb1.Rotation[2])};
    glm::vec3 axes2[] = {glm::vec3(obb2.Rotation[0]), glm::vec3(obb2.Rotation[1]), glm::vec3(obb2.Rotation[2])};

    std::vector<glm::vec3> axes;
    for (int i = 0; i < 3; ++i) 
    {
        axes.push_back(axes1[i]);
        axes.push_back(axes2[i]);
        for (int j = 0; j < 3; ++j) 
        {
            axes.push_back(glm::normalize(glm::cross(axes1[i], axes2[j])));
        }
    }

    // project the OBBs onto the axes
    for (const auto &axis : axes) 
    {
        float min1, max1, min2, max2;
        projectOBB(obb1, axis, min1, max1);
        projectOBB(obb2, axis, min2, max2);
        if (max1 < min2 || max2 < min1) 
        {
            info.hasCollision = false;
            return info;
        }
        else 
        {
            float depth = std::min(max1, max2) - std::max(min1, min2);
            if (depth < info.depth) 
            {
                info.depth = depth;
                info.normal = axis;
            }
        }
    }
    info.hasCollision = true;

    // the direction of the normal is from obb2 to obb1
    if (glm::dot(info.normal, obb1.center - obb2.center) < 0.0f) 
    {
        info.normal = -info.normal;
    }

    // find the contact point
    ContactPointFace(obb1, obb2, info, 0.005f);
    return info;
};

void CollisionDetector::applyPenetrationCorrection(const CollisionInfo &info, float ratio, glm::mat4 &worldMat)
{
    // TODO: FIX THIS ! The depth is too small.
    glm::vec3 correction = info.normal * ratio;
    worldMat = glm::translate(worldMat, correction);
};


