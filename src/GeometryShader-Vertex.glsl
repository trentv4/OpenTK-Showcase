#version 330 core
layout(location=0) in vec3 _position;
layout(location=1) in vec2 _uv;
layout(location=2) in vec4 _color;
layout(location=3) in vec3 _normal;

uniform mat4 model;
uniform mat4 view;
uniform mat4 perspective;

out vec3 position;
out vec2 uv;
out vec4 color;
out vec3 normal;

void main() {
	vec4 pos = vec4(_position, 1.0) * model;
	gl_Position = pos * view * perspective;
	position = vec3(pos);

	uv = _uv;
	color = _color;
	normal = _normal;
}
