shader_type spatial;
uniform float delay = 0.0;

void vertex() {
	float time = max(TIME - delay, 0.0);
	VERTEX.y += .25 * sin(time * 1.4);
	VERTEX.x += 5.4 * sin(time*2.0);
	VERTEX.z += 5.4 * cos(time*2.0);
}

void fragment() {
	ALBEDO = vec3(0.7);
}
