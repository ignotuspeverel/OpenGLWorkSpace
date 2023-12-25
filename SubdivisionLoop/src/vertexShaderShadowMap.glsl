#version 330 core         

layout(location=0) in vec3 vPosition;

uniform mat4 depthMVP;

void main() 
{
    gl_Position = depthMVP*vec4(vPosition, 1);
}
