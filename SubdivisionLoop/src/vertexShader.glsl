#version 330 core           

layout(location=0) in vec3 vPosition;
layout(location=1) in vec3 vNormal;
layout(location=2) in vec2 vTexCoord;

uniform mat4 modelMat, viewMat, projMat;
uniform mat3 normMat;

uniform mat4 depthMVP[3]; // receives depth matrix for each light in scene

out vec3 fPositionModel;
out vec3 fPosition;
out vec3 fNormal;
out vec2 fTexCoord;

out vec4 fPosShadow[3];

void main() {
    fPositionModel = vPosition;
    fPosition = (modelMat*vec4(vPosition, 1.0)).xyz;
    fNormal = normMat*vNormal;
    fTexCoord = vTexCoord;

    for (int i = 0; i < depthMVP.length(); i++) {
        fPosShadow[i] = depthMVP[i] * modelMat * vec4(vPosition, 1.0); // shadows
    }

    gl_Position =  projMat * viewMat * modelMat * vec4(vPosition, 1.0); 
}
