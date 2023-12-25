#ifndef SHADOWMAP_H
#define SHADOWMAP_H

#include <glad/glad.h>
#include <fstream>
#include <iostream>
#include <ostream>
#include <string>
#include <memory>
#include <glm/glm.hpp>
#include <glm/ext.hpp>

class FboShadowMap
{
public:
    GLuint getTextureId() const { return _depthMapTexture; }

    bool allocate(unsigned int width = 1024, unsigned int height = 768)
    {
        glGenFramebuffers(1, &_depthMapFbo);
        glBindFramebuffer(GL_FRAMEBUFFER, _depthMapFbo);

        _depthMapTextureWidth = width;
        _depthMapTextureHeight = height;

        glGenTextures(1, &_depthMapTexture);
        glBindTexture(GL_TEXTURE_2D, _depthMapTexture);
        glTexImage2D(GL_TEXTURE_2D, 0, GL_DEPTH_COMPONENT16, width, height, 0, GL_DEPTH_COMPONENT, GL_FLOAT, 0);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);

        glFramebufferTexture(GL_FRAMEBUFFER, GL_DEPTH_ATTACHMENT, _depthMapTexture, 0);

        glDrawBuffer(GL_NONE);

        if (glCheckFramebufferStatus(GL_FRAMEBUFFER) == GL_FRAMEBUFFER_COMPLETE)
        {
            glBindFramebuffer(GL_FRAMEBUFFER, 0);
            return true;
        }
        else
        {
            std::cout << "PROBLEM IN FBO FboShadowMap::allocate(): FBO NOT successfully created" << std::endl;
            glBindFramebuffer(GL_FRAMEBUFFER, 0);
            return false;
        }
    }

    void bindFbo()
    {
        glViewport(0, 0, _depthMapTextureWidth, _depthMapTextureHeight);
        glBindFramebuffer(GL_FRAMEBUFFER, _depthMapFbo);
        glClear(GL_DEPTH_BUFFER_BIT);
    }

    void free() { glDeleteFramebuffers(1, &_depthMapFbo); }

    void savePpmFile(std::string const &filename)
    {
        std::ofstream output_image(filename.c_str());

        int i, j, k;
        float *pixels = new float[_depthMapTextureWidth * _depthMapTextureHeight];

        glReadBuffer(GL_COLOR_ATTACHMENT0);
        glReadPixels(0, 0, _depthMapTextureWidth, _depthMapTextureHeight, GL_DEPTH_COMPONENT, GL_FLOAT, pixels);

        output_image << "P3" << std::endl;
        output_image << _depthMapTextureWidth << " " << _depthMapTextureHeight << std::endl;
        output_image << "255" << std::endl;

        k = 0;
        for (i = 0; i < _depthMapTextureWidth; ++i)
        {
            for (j = 0; j < _depthMapTextureHeight; ++j)
            {
                output_image << static_cast<unsigned int>(255 * pixels[k]) << " " << static_cast<unsigned int>(255 * pixels[k]) << " " << static_cast<unsigned int>(255 * pixels[k]) << " ";
                k = k + 1;
            }
            output_image << std::endl;
        }
        delete[] pixels;
        output_image.close();
    }

private:
    GLuint _depthMapFbo;
    GLuint _depthMapTexture;
    unsigned int _depthMapTextureWidth;
    unsigned int _depthMapTextureHeight;
};

#endif // SHADOWMAP_H