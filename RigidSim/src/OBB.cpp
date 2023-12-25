#include "OBB.hpp"

#include "Vector3.hpp"
#include "Matrix3x3.hpp"
#include "typedefs.hpp"
#include "Mesh.h"
#include <vector>
#include <memory>
#include <string>
#include <iostream>

#include <glm/glm.hpp>
#include <glm/ext.hpp>
#include <Eigen/Dense> // Add the correct include path for Eigen library

OBB OBB::ComputeOBBfromMesh(std::shared_ptr<Mesh> &mesh, const glm::mat4 &worldMat)
{
    // compute the center of the mesh
    glm::vec3 MeshCenter = glm::vec3(0.0f, 0.0f, 0.0f);
    for (const auto &v : mesh->vertexPositions())
    {
        MeshCenter += v;
    }
    MeshCenter /= mesh->vertexPositions().size();

    // compute covariance matrix
    glm::mat3 CovarianceMatrix = glm::mat3(0.0f);
    for (const auto &v : mesh->vertexPositions())
    {
        glm::vec3 v_ = v - MeshCenter;
        CovarianceMatrix += glm::outerProduct(v_, v_);
    }
    CovarianceMatrix /= mesh->vertexPositions().size();

    Eigen::Matrix3f eigenMatrix;
    for (int i = 0; i < 3; ++i) {
        for (int j = 0; j < 3; ++j) {
            if (CovarianceMatrix[i][j] < 0.0001f) 
            {
                eigenMatrix(i, j) = 0.0f;
            }
            else
            {
                eigenMatrix(i, j) = CovarianceMatrix[i][j];  
            } 
        }
    }

    // compute eigenvalues and eigenvectors
    Eigen::EigenSolver<Eigen::Matrix3f> solver(eigenMatrix, true);
    Eigen::Vector3f eigenvalues = solver.eigenvalues().real();
    Eigen::Matrix3f eigenvectors = solver.eigenvectors().real();
    
    // Create a list of (eigenvalue, index) pairs
    std::vector<std::pair<float, int>> indexed_eigenvalues;
    for (int i = 0; i < 3; ++i) 
    {
        indexed_eigenvalues.push_back(std::make_pair(eigenvalues[i], i));
    }

    // Sort the eigenvalues by their absolute value in descending order
    std::sort(indexed_eigenvalues.begin(), indexed_eigenvalues.end(),
          [](const std::pair<float, int> &a, 
          const std::pair<float, int> &b) 
          {
            return std::abs(a.first) > std::abs(b.first);
          });

    // Arrange the eigenvectors according to the sorted indices
    Eigen::Matrix3f sortedEigenvectors;
    for (int i = 0; i < 3; ++i) 
    {
        int index = indexed_eigenvalues[i].second;
        sortedEigenvectors.col(i) = eigenvectors.col(index);
    }

    glm::mat3 EigenVectors = glm::mat3(1.0f);
    for (int i = 0; i < 3; ++i) 
    {
        for (int j = 0; j < 3; ++j) 
        {
            EigenVectors[i][j] = sortedEigenvectors(j, i); 
        }
    }

    // compute the half sizes
    glm::vec3 minHalfSize(FLT_MAX);
    glm::vec3 maxHalfSize(-FLT_MAX);
    glm::mat3 invRotation = glm::transpose(EigenVectors); 

    for (const auto &v : mesh->vertexPositions()) 
    {
        glm::vec3 localVertex = invRotation * (v - MeshCenter); 
        minHalfSize = glm::min(minHalfSize, localVertex);
        maxHalfSize = glm::max(maxHalfSize, localVertex);
    }

    glm::vec3 obbHalfSizes = (maxHalfSize - minHalfSize) * 0.5f;

    // update obb
    OBB obb;
    obb.center = glm::vec3(worldMat * glm::vec4(MeshCenter, 1.0f));
    obb.halfSize = obbHalfSizes;
    obb.Rotation = glm::mat3(worldMat);


    return obb;
};    