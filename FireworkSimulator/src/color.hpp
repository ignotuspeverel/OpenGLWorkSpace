#ifndef _COLOR_HPP_
#define _COLOR_HPP_

#include <iostream>
#include <string>
#include <vector>
#include <map>
#include <cstdlib> 

struct RGB 
{
    int r, g, b;
};

class ColorMap 
{
private:
    std::map<std::string, std::string> colorNameToCode;                 // Maps color names to their codes
    std::vector<std::string> colorCodes;                                // All color codes, including invisible
    std::map<std::string, int> colorCodeIndexes;                        // Map of color codes to their index
    std::map<std::string, RGB> colorTuples;                             // Map of color codes to RGB tuples
    std::string invisibleColorCode;                                     // Invisible color code

    // Helper function to convert hex color code to RGB tuple
    RGB hexToRgb(const std::string& hex) 
    {
        return RGB 
        {
            std::stoi(hex.substr(1, 2), nullptr, 16),
            std::stoi(hex.substr(3, 2), nullptr, 16),
            std::stoi(hex.substr(5, 2), nullptr, 16)
        };
    }

public:
    // Constructor to initialize the invisible color code and predefined colors
    ColorMap(const std::string& invisibleCode = "InvisibleCode") : invisibleColorCode(invisibleCode) 
    {
        // Add invisible color code to the colorCodes vector first
        colorCodes.push_back(invisibleColorCode);

        // Predefined colors
        addColor("Red", "#ff0043");
        addColor("Green", "#14fc56");
        addColor("Blue", "#1e7fff");
        addColor("Purple", "#e60aff");
        addColor("Gold", "#ffbf36");
        addColor("White", "#ffffff");
    }

    // Function to add a color name and its hex code
    void addColor(const std::string& name, const std::string& hexCode) 
    {
        colorNameToCode[name] = hexCode;
        colorCodes.push_back(hexCode);
        colorTuples[hexCode] = hexToRgb(hexCode);
        // Rebuild the index map
        for (size_t i = 0; i < colorCodes.size(); ++i) 
        {
            colorCodeIndexes[colorCodes[i]] = i;
        }
    }

    // Retrieve a color code by name
    std::string getColorCode(const std::string& name) const 
    {
        auto it = colorNameToCode.find(name);
        if (it != colorNameToCode.end()) 
        {
            return it->second;
        }
        // Return invisible or a default color code if not found
        return invisibleColorCode;
    }

    // Get RGB values of a color code
    RGB getRgb(const std::string& hexCode) const 
    {
        auto it = colorTuples.find(hexCode);
        if (it != colorTuples.end()) 
        {
            return it->second;
        }
        return RGB{0, 0, 0}; // return default RGB if not found
    }

    std::vector<std::string> getAllColorCodes() const 
    {
        return colorCodes;
    }

    // Function to get a random color code
    std::string getRandomColorCode() const 
    {
        if (colorCodes.empty()) return invisibleColorCode;
        int index = std::rand() % colorCodes.size();
        return colorCodes[index];
    }
};

#endif