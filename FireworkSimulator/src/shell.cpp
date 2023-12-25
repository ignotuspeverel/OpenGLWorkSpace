#include "shell.hpp"

#include <algorithm> 
#include <cmath>    

void Shell::launch(glm::vec3 position, float launchHeight) 
{
    // Position is from 0 to 1
    const int hpad = 0.3; // Horizontal padding
    const int vpad = 0.2; // Vertical padding
    const float minHeightPercent = 0.45f; // Min height percent
    const float minHeight = 2 - static_cast<float>(2 * minHeightPercent);                      // Min height as a percent in the box

    const float launchX = static_cast<float>(position.x * (2 - 2 * hpad) + hpad) - 1;
    const float launchZ = static_cast<float>(position.z * (2 - 2 * hpad) + hpad) - 1;
    const int launchY = -1;
    const int burstY = minHeight - static_cast<float>(launchHeight * (minHeight - vpad)) - 1;

    const int launchDistance = launchY - burstY;
    const float launchVelocity = std::pow(launchDistance * 0.04f, 0.64f); // Custom power curve

    

}
