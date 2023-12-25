#ifndef MESH_H
#define MESH_H

#include <glad/glad.h>
#include <vector>
#include <memory>
#include <iostream>
#include <ostream>

#include <glm/glm.hpp>
#include <glm/ext.hpp>

#include <map>
#include <set>

class Mesh
{
public:
    virtual ~Mesh();

    const std::vector<glm::vec3> &vertexPositions() const { return _vertexPositions; }
    std::vector<glm::vec3> &vertexPositions() { return _vertexPositions; }

    const std::vector<glm::vec3> &vertexNormals() const { return _vertexNormals; }
    std::vector<glm::vec3> &vertexNormals() { return _vertexNormals; }

    const std::vector<glm::vec2> &vertexTexCoords() const { return _vertexTexCoords; }
    std::vector<glm::vec2> &vertexTexCoords() { return _vertexTexCoords; }

    const std::vector<glm::uvec3> &triangleIndices() const { return _triangleIndices; }
    std::vector<glm::uvec3> &triangleIndices() { return _triangleIndices; }

    /// Compute the parameters of a sphere which bounds the mesh
    void computeBoundingSphere(glm::vec3 &center, float &radius) const;

    void recomputePerVertexNormals(bool angleBased = false);
    void recomputePerVertexTextureCoordinates();

    void init();
    void initOldGL();
    void render();
    void clear();

    void addPlan(float square_half_side = 2.0f);

    void subdivideLinear()
    {
        std::vector<glm::vec3> newVertices = _vertexPositions;
        std::vector<glm::uvec3> newTriangles;

        struct Edge
        {
            unsigned int a, b;
            Edge(unsigned int c, unsigned int d) : a(std::min<unsigned int>(c, d)), b(std::max<unsigned int>(c, d)) {}
            bool operator<(Edge const &o) const { return a < o.a || (a == o.a && b < o.b); }
            bool operator==(Edge const &o) const { return a == o.a && b == o.b; }
        };
        std::map<Edge, unsigned int> newVertexOnEdge;
        for (unsigned int tIt = 0; tIt < _triangleIndices.size(); ++tIt)
        {
            unsigned int a = _triangleIndices[tIt][0];
            unsigned int b = _triangleIndices[tIt][1];
            unsigned int c = _triangleIndices[tIt][2];

            Edge Eab(a, b);
            unsigned int oddVertexOnEdgeEab = 0;
            if (newVertexOnEdge.find(Eab) == newVertexOnEdge.end())
            {
                newVertices.push_back((_vertexPositions[a] + _vertexPositions[b]) / 2.f);
                oddVertexOnEdgeEab = newVertices.size() - 1;
                newVertexOnEdge[Eab] = oddVertexOnEdgeEab;
            }
            else
            {
                oddVertexOnEdgeEab = newVertexOnEdge[Eab];
            }

            Edge Ebc(b, c);
            unsigned int oddVertexOnEdgeEbc = 0;
            if (newVertexOnEdge.find(Ebc) == newVertexOnEdge.end())
            {
                newVertices.push_back((_vertexPositions[b] + _vertexPositions[c]) / 2.f);
                oddVertexOnEdgeEbc = newVertices.size() - 1;
                newVertexOnEdge[Ebc] = oddVertexOnEdgeEbc;
            }
            else
            {
                oddVertexOnEdgeEbc = newVertexOnEdge[Ebc];
            }

            Edge Eca(c, a);
            unsigned int oddVertexOnEdgeEca = 0;
            if (newVertexOnEdge.find(Eca) == newVertexOnEdge.end())
            {
                newVertices.push_back((_vertexPositions[c] + _vertexPositions[a]) / 2.f);
                oddVertexOnEdgeEca = newVertices.size() - 1;
                newVertexOnEdge[Eca] = oddVertexOnEdgeEca;
            }
            else
            {
                oddVertexOnEdgeEca = newVertexOnEdge[Eca];
            }

            // set new triangles :
            newTriangles.push_back(glm::uvec3(a, oddVertexOnEdgeEab, oddVertexOnEdgeEca));
            newTriangles.push_back(glm::uvec3(oddVertexOnEdgeEab, b, oddVertexOnEdgeEbc));
            newTriangles.push_back(glm::uvec3(oddVertexOnEdgeEca, oddVertexOnEdgeEbc, c));
            newTriangles.push_back(glm::uvec3(oddVertexOnEdgeEab, oddVertexOnEdgeEbc, oddVertexOnEdgeEca));
        }

        // after that:
        _triangleIndices = newTriangles;
        _vertexPositions = newVertices;
        recomputePerVertexNormals();
        recomputePerVertexTextureCoordinates();
    }

    void subdivideLoopNew()
    {
        // Declare new vertices and new triangles. Initialize the new positions for the even vertices with (0,0,0):
        std::vector<glm::vec3> newVertices(_vertexPositions.size(), glm::vec3(0, 0, 0));
        std::vector<glm::uvec3> newTriangles;

        struct Edge
        {
            unsigned int a, b;
            Edge(unsigned int c, unsigned int d) : a(std::min<unsigned int>(c, d)), b(std::max<unsigned int>(c, d)) {}
            bool operator<(Edge const &o) const { return a < o.a || (a == o.a && b < o.b); }
            bool operator==(Edge const &o) const { return a == o.a && b == o.b; }
        };

        std::map<Edge, unsigned int> newVertexOnEdge;                                     // this will be useful to find out whether we already inserted an odd vertex or not
        std::map<Edge, std::set<unsigned int>> trianglesOnEdge;                           // this will be useful to find out if an edge is boundary or not
        std::map<Edge, unsigned int> edgeTriangleCount;
        std::vector<std::set<unsigned int>> neighboringVertices(_vertexPositions.size()); // this will be used to store the adjacent vertices, i.e., neighboringVertices[i] will be the list of vertices that are adjacent to vertex i.
        std::vector<bool> evenVertexIsBoundary(_vertexPositions.size(), false);
        

        // I) First, compute the valences of the even vertices, the neighboring vertices required to update the position of the even vertices, and the boundaries:
        for (unsigned int tIt = 0; tIt < _triangleIndices.size(); ++tIt)
        {
            unsigned int a = _triangleIndices[tIt][0];
            unsigned int b = _triangleIndices[tIt][1];
            unsigned int c = _triangleIndices[tIt][2];

            // TODO: Remember the faces shared by the edge
            Edge Eab(a, b), Ebc(b, c), Eca(c, a);
            edgeTriangleCount[Eab]++;
            edgeTriangleCount[Ebc]++;
            edgeTriangleCount[Eca]++;

            if (trianglesOnEdge[Eab].find(c) == trianglesOnEdge[Eab].end()) 
            {
                trianglesOnEdge[Eab].insert(c);
            }

            if (trianglesOnEdge[Ebc].find(a) == trianglesOnEdge[Ebc].end()) 
            {
                trianglesOnEdge[Ebc].insert(a);
            }

            if (trianglesOnEdge[Eca].find(b) == trianglesOnEdge[Eca].end()) 
            {
                trianglesOnEdge[Eca].insert(b);
            }

            neighboringVertices[a].insert(b);
            neighboringVertices[a].insert(c);
            neighboringVertices[b].insert(a);
            neighboringVertices[b].insert(c);
            neighboringVertices[c].insert(a);
            neighboringVertices[c].insert(b);
        }

        for (const auto& edgeCountPair : edgeTriangleCount) {
            if (edgeCountPair.second == 1) 
            { 
                evenVertexIsBoundary[edgeCountPair.first.a] = true;
                evenVertexIsBoundary[edgeCountPair.first.b] = true;
            }
        }

        // The valence of a vertex is the number of adjacent vertices:
        std::vector<unsigned int> evenVertexValence(_vertexPositions.size(), 0);
        for (unsigned int v = 0; v < _vertexPositions.size(); ++v)
        {
            evenVertexValence[v] = neighboringVertices[v].size();
        }
        // TODO: Identify even vertices (clue: check the number of triangles) and remember immediate neighbors for further calculation
        //  II) Then, compute the positions for the even vertices: (make sure that you handle the boundaries correctly)
        float alpha = 0.0f;
        
        for (unsigned int v = 0; v < _vertexPositions.size(); ++v)
        {
            // TODO: Compute the coordinates for even vertices - check both the cases - ordinary and extraordinary
            if (evenVertexIsBoundary[v]) 
            {
                for (auto &neighbor : neighboringVertices[v])
                {
                    if (evenVertexIsBoundary[neighbor]) 
                    {
                        newVertices[v] += _vertexPositions[neighbor] * (0.125f);
                    }
                }
                newVertices[v] += _vertexPositions[v] * (0.75f);
            }
            else
            {
                unsigned int valence = evenVertexValence[v];
                //if (valence > 3) alpha = (0.375f / (float)valence);
                //else if (valence == 3) alpha = 0.1875f;
                //else std::cout<<("Error: valence is less than 3\n")<<std::endl;

                alpha = (40.f - pow(3.f + 2.f*cos(2.f*M_PI/valence), 2)) / 64.f;

                for (unsigned int neighbor : neighboringVertices[v])
                {
                    newVertices[v] += _vertexPositions[neighbor] * (alpha/valence);
                }

                newVertices[v] += _vertexPositions[v] * (1 - alpha);

            }
        }

        // III) Then, compute the odd vertices:
        for (unsigned int tIt = 0; tIt < _triangleIndices.size(); ++tIt)
        {
            unsigned int a = _triangleIndices[tIt][0];
            unsigned int b = _triangleIndices[tIt][1];
            unsigned int c = _triangleIndices[tIt][2];

            Edge Eab(a, b);
            unsigned int oddVertexOnEdgeEab = 0;
            if (newVertexOnEdge.find(Eab) == newVertexOnEdge.end())
            {
                newVertices.push_back(glm::vec3(0, 0, 0));
                oddVertexOnEdgeEab = newVertices.size() - 1;
                newVertexOnEdge[Eab] = oddVertexOnEdgeEab;
                if (edgeTriangleCount[Eab] == 1) 
                {
                    newVertices[oddVertexOnEdgeEab] = (_vertexPositions[a] + _vertexPositions[b]) / 2.0f;
                }
                else
                {
                    for (auto vertex : trianglesOnEdge[Eab])
                    {
                        newVertices[oddVertexOnEdgeEab] += 0.125f * _vertexPositions[vertex];
                    }
                    newVertices[oddVertexOnEdgeEab] += ((_vertexPositions[a] + _vertexPositions[b]) * 0.375f);
                }
            }
            else
            {
                oddVertexOnEdgeEab = newVertexOnEdge[Eab];
            }

            // TODO: Update odd vertices

            Edge Ebc(b, c);
            unsigned int oddVertexOnEdgeEbc = 0;
            if (newVertexOnEdge.find(Ebc) == newVertexOnEdge.end())
            {
                newVertices.push_back(glm::vec3(0, 0, 0));
                oddVertexOnEdgeEbc = newVertices.size() - 1;
                newVertexOnEdge[Ebc] = oddVertexOnEdgeEbc;
                if (edgeTriangleCount[Ebc] == 1) 
                {
                    newVertices[oddVertexOnEdgeEbc] = (_vertexPositions[b] + _vertexPositions[c]) / 2.0f;
                }
                else
                {
                    for (auto vertex : trianglesOnEdge[Ebc])
                    {
                        newVertices[oddVertexOnEdgeEbc] += 0.125f * _vertexPositions[vertex];
                    }
                    newVertices[oddVertexOnEdgeEbc] += ((_vertexPositions[b] + _vertexPositions[c]) * 0.375f);
                }
            }                
            else
            {
                oddVertexOnEdgeEbc = newVertexOnEdge[Ebc];
            }
            

            // TODO: Update odd vertices

            Edge Eca(c, a);
            unsigned int oddVertexOnEdgeEca = 0;
            if (newVertexOnEdge.find(Eca) == newVertexOnEdge.end())
            {
                newVertices.push_back(glm::vec3(0, 0, 0));
                oddVertexOnEdgeEca = newVertices.size() - 1;
                newVertexOnEdge[Eca] = oddVertexOnEdgeEca;
                if (edgeTriangleCount[Eca] == 1) 
                {
                    newVertices[oddVertexOnEdgeEca] = (_vertexPositions[c] + _vertexPositions[a]) / 2.0f;
                }
                else
                {
                    for (auto vertex : trianglesOnEdge[Eca])
                    {
                        newVertices[oddVertexOnEdgeEca] += 0.125f * _vertexPositions[vertex];
                    }
                    newVertices[oddVertexOnEdgeEca] += ((_vertexPositions[c] + _vertexPositions[a]) * 0.375f);
                }
            }
            
            else
            {
                oddVertexOnEdgeEca = newVertexOnEdge[Eca];
            }

            // TODO: Update odd vertices

            // set new triangles :
            newTriangles.push_back(glm::uvec3(a, oddVertexOnEdgeEab, oddVertexOnEdgeEca));
            newTriangles.push_back(glm::uvec3(oddVertexOnEdgeEab, b, oddVertexOnEdgeEbc));
            newTriangles.push_back(glm::uvec3(oddVertexOnEdgeEca, oddVertexOnEdgeEbc, c));
            newTriangles.push_back(glm::uvec3(oddVertexOnEdgeEab, oddVertexOnEdgeEbc, oddVertexOnEdgeEca));
        }

        // after that:
        _triangleIndices = newTriangles;
        _vertexPositions = newVertices;
        recomputePerVertexNormals();
        recomputePerVertexTextureCoordinates();
    }

    void subdivideLoop()
    {
        //subdivideLinear();
        subdivideLoopNew();

        // TODO: Implement here the Loop subdivision instead of the straightforward Linear Subdivision.
        // You can have a look at the Linear Subdivision function to take some inspiration from it.
        //
        // A few recommendations / advices (note that the following regards a simple implementation that does not handle boundaries, you can adapt it if you want to handle those):
        // I) start by declaring a vector of new positions "newVertices" and a vector of new triangles "newTriangles".
        //    Do not mix the new quantities and the old ones.
        //    At the end, replace _vertexPositions by newVertices and _triangleIndices by newTriangles, just as it is done in subdivideLinear().
        //    This will help you writing clean code.
        //    Remember: In the Loop subdivision scheme, a new position (in the output mesh at level k+1) is a linear combination of the old vertices positions (at level k).
        //    So, you should NEVER (!!!!!) have in your code something like: newVertices[ v ] += newVertices[ v_neighbor ] * weight;
        // II) Compute the neighbors of all the even vertices. You can use a structure such as "std::vector< std::set< unsigned int > > vertex_neighbors" for example.
        //    This will give you the valence n of a given even vertex v, and the value of the coefficient alpha_n that you need to use in the computation of the new position for v.
        // III) Compute the new positions for the even vertices. If you compute the even vertices first, you will not be tempted to consider the odd vertices as their neighbors (that would be a -- very common, mistake).
        // IV) Process all triangles, insert the odd vertices, compute their position using the subdivision mask, and create four new triangles per old triangle.
        //    You can get inspiration from subdivideLinear() for that part.
        //
        // Good luck! Do not hesitate asking questions, we are here to help you.
    }

private:
    std::vector<glm::vec3> _vertexPositions;
    std::vector<glm::vec3> _vertexNormals;
    std::vector<glm::vec2> _vertexTexCoords;
    std::vector<glm::uvec3> _triangleIndices;

    GLuint _vao = 0;
    GLuint _posVbo = 0;
    GLuint _normalVbo = 0;
    GLuint _texCoordVbo = 0;
    GLuint _ibo = 0;
    GLuint _texId = 0;
};

// utility: loader
void loadOFF(const std::string &filename, std::shared_ptr<Mesh> meshPtr);

#endif // MESH_H
