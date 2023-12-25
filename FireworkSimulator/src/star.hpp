#ifndef _STAR_HPP_
#define _STAR_HPP_

#include "color.hpp"

#include <map>
#include <vector>
#include <GL/glew.h>
#include <glm/glm.hpp>
#include <functional>

// Particle structure
struct Particle 
{
    bool visible;
    bool heavy;
    glm::vec3 position;
    glm::vec3 prevPosition;
    RGB color;                      // RGB color
    glm::vec3 speed;
    float life;
    float fullLife;
    float spinAngle;
    float spinSpeed;
    float spinRadius;
    int sparkFreq;
    float sparkSpeed;
    int sparkTimer;
    RGB sparkColor; // Assuming sparkColor is also RGB
    int sparkLife;
    float sparkLifeVariation;
    bool strobe;

    RGB secondColor;
    float transitionTime;
    bool colorChanged;

    // Function to update the particle state
    std::function<void(Particle&)> onDeath;
};

// Particle Collection
// Particles are stored in arrays keyed by color (code, not name) for improved rendering performance.
std::map<std::string, std::vector<Particle>> createParticleCollection(const ColorMap& colorMap) 
{
    std::map<std::string, std::vector<Particle>> collection;
    auto colorCodes = colorMap.getAllColorCodes(); // Get all color codes from ColorMap
    for (const auto &colorCode : colorCodes) 
    {
        collection[colorCode] = std::vector<Particle>();
    }
    return collection;
}


class Star {
public:
    float drawWidth;
    float airDrag;
    float airDragHeavy;
    ColorMap colorMap = ColorMap();
    std::map<std::string, std::vector<Particle>> active;
    std::vector<Particle> pool;

    Star() : drawWidth(3.0f), airDrag(0.98f), airDragHeavy(0.992f) 
    {
        active = createParticleCollection(colorMap);
    }

    Particle createNew() 
    {
        // Initialize and return a new Particle object
        return Particle{};
    }

    void add(float x, float y, float z, std::string color, float angle, float speed, float life, float speedOffX = 0, float speedOffY = 0, float speedOffZ = 0) 
    {
        Particle instance = pool.empty() ? createNew() : pool.back();
        if (!pool.empty()) pool.pop_back();

        // Initialize the instance properties
        instance.visible = true;
        instance.position = glm::vec3(x, y, z);
        instance.prevPosition = instance.position;
        instance.color = colorMap.getRgb(color); // assuming color is a hex code
        instance.speed = glm::vec3(std::sin(angle) * speed + speedOffX, std::cos(angle) * speed + speedOffY, speedOffZ);
        instance.life = life;
        instance.fullLife = life;
        // Initialize other properties
        instance.spinAngle = static_cast<float>(rand()) / static_cast<float>(RAND_MAX) * 2 * M_PI; // Random angle in radians
        instance.spinSpeed = 0.8f;
        instance.spinRadius = 0.0f;
        instance.sparkFreq = 0;                                                    // ms between spark emissions
        instance.sparkSpeed = 1.0f;
        instance.sparkTimer = 0;
        instance.sparkColor = instance.color;                                   // Assigning particle color to sparks for now
        instance.sparkLife = 750;
        instance.sparkLifeVariation = 0.25f;
        instance.strobe = false;

        active[color].push_back(instance);
    }

    void returnInstance(Particle &instance) 
    {
        // Reset particle instance properties and return it to the pool
        if (instance.onDeath) instance.onDeath(instance);
        instance.onDeath = nullptr;
        instance.secondColor = RGB{ 0, 0, 0 };
        instance.transitionTime = 0.0f;
        instance.colorChanged = false;
        pool.push_back(instance);
    }

    // Function to update and render stars
    void updateAndRender() {
        // Iterate through all active particles and update their state
        // Render each particle using OpenGL commands
        //...
    }
};

class spark 
{
    
};


#endif // !_STAR_HPP_