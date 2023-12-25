#version 330 core           

struct LightSource {
  vec3 position;
  vec3 color;
  float intensity;
  int isActive;
};

struct Material {
  vec3 albedo;
  sampler2D uvTex;
  int uvTexLoaded;
};

int numberOfLights = 3;
float pi = 3.1415927;

uniform Material material;
uniform LightSource lightSources[3];
uniform vec3 camPos;
uniform sampler2D depthTex[3];

in vec3 fPositionModel;
in vec3 fPosition;
in vec3 fNormal;
in vec2 fTexCoord;
in vec4 fPosShadow[3];

out vec4 colorOut; 


float shadowMapCalculation(vec4 fPosLight, int i) 
{
    vec3 projCoord = fPosLight.xyz / fPosLight.w;              // ndc [-1,1] range
    projCoord = projCoord * 0.5 + 0.5;                         // [0,1] range
    float closestDepth;

    if (i == 0) 
    {
        closestDepth = texture(depthTex[0], projCoord.xy).r;
    } else if (i == 1) 
    {
        closestDepth = texture(depthTex[1], projCoord.xy).r;
    } else if (i == 2) 
    {
        closestDepth = texture(depthTex[2], projCoord.xy).r;
    }

    float currentDepth = projCoord.z - 0.001;
    float shadow = currentDepth > closestDepth ? 1.0 : 0.0;
    return shadow;
}

void main() {
    vec3 n = normalize(fNormal);
    vec3 wo = normalize(camPos - fPosition); // unit vector pointing to the camera

    vec3 radiance = vec3(0, 0, 0);
    vec3 texColor = vec3(1, 1, 1);

    if (material.uvTexLoaded==1) 
    {
            texColor = texture(material.uvTex, fTexCoord).rgb;
    }

    for(int i = 0; i < numberOfLights; ++i) 
    {
        LightSource a_light = lightSources[i];
        if(a_light.isActive == 1) 
        { 
            vec3 wi = normalize(a_light.position - fPosition); 
            vec3 Li = a_light.color * a_light.intensity;
            vec3 albedo = material.albedo;
            float shadow = shadowMapCalculation(fPosShadow[i], i);
            radiance += Li*albedo*max(dot(n, wi), 0)*texColor*(1.0 - shadow);
        }
    }

    colorOut = vec4(radiance, 1.0); // build an RGBA value from an RGB one
}
