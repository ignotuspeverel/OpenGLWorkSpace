#ifndef _SHELL_HPP_
#define _SHELL_HPP_

#include "star.hpp"
#include "color.hpp"

#include <glm/glm.hpp>
#include <glm/ext.hpp>

#include <glm/gtc/quaternion.hpp>

#include <vector>
#include <string>
#include <iostream>
#include <fstream>
#include <sstream>


// Represents a color, could be further defined or replaced by an existing library type
struct Color 
{
    std::string code; // Color code (e.g., hex code, name)
};

// Represents options for Shell construction
struct ShellOptions 
{
    float spreadSize;                       // Size of the burst
    int starCount;                          // Number of stars to create
    float starLife;                         // Base life of each star
    float starLifeVariation;                // Variation in the life of stars
    RGB color;                              // Primary color of the shell
    RGB glitterColor;                       // Color of the glitter effect
    std::string glitter;                    // Type of glitter effect
    bool pistil;                            // Whether the shell has a pistil effect
    RGB pistilColor;                        // Color of the pistil
    bool streamers;                         // Whether the shell has streamers
    bool crossette;                         // Whether the shell has crossette effect
    bool floral;                            // Whether the shell has floral effect
    bool crackle;                           // Whether the shell has crackle effect
};

class Shell 
{
public:
    Shell(ShellOptions options) : options(options) 
    {
        // If starCount is not set, calculate it based on spreadSize and a default density
        if (!this->options.starCount) 
        {
            float density = 1.0f; // Default density value
            float scaledSize = this->options.spreadSize / 54;
            this->options.starCount = std::max(6, static_cast<int>(std::pow(scaledSize, 2) * density));
        }
    };
    ~Shell();

    void launch(glm::vec3 position, float launchHeight); // Function to launch the shell
    void burst(float x, float y); // Function to simulate the burst of the shell


private:
    ShellOptions options;

};

#endif // _SHELL_HPP_