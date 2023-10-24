uniform float time;
uniform float progress;
uniform sampler2D texture1;
uniform vec4 resolution;
varying vec2 vUv;
varying vec3 vPosition;
varying vec3 vNormal;

float PI = 3.1415926;
varying vec3 vColor;

void main() {
	vec3 light = vec3(0.);
	vec3 skyColor = vec3(1.0, 1.0, 0.547);
	vec3 groundColor = vec3(0.562, .275, 0.111);
	vec3 lightDirection = normalize(vec3(0.,-1.,-1.));

	light += dot(lightDirection, vNormal);

	light = mix(skyColor, groundColor, dot(lightDirection, vNormal));

	gl_FragColor = vec4(light * vColor, 1.);
}