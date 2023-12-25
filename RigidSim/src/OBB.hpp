#ifndef _OBB_HPP_
#define _OBB_HPP_

#include "Vector3.hpp"
#include "Matrix3x3.hpp"
#include "typedefs.hpp"
#include "Mesh.h"
#include <vector>
#include <glm/glm.hpp>
#include <glm/ext.hpp>

class OBB
{
public:
    glm::vec3 center;
    glm::vec3 halfSize;
    glm::mat3 Rotation;

    OBB() : center(0, 0, 0), halfSize(0, 0, 0), Rotation(glm::mat3(1.0f)) {}
    OBB(const glm::vec3 &c, const glm::vec3 &hs, const  glm::mat3 &rot) : center(c), halfSize(hs), Rotation(rot) {}

    static OBB ComputeOBBfromMesh(std::shared_ptr<Mesh> &mesh, const glm::mat4 &worldMat);

};   



#endif  /* _OBB_HPP_ */