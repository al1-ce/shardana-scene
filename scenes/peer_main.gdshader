shader_type spatial;

uniform float alpha: hint_range(0.0, 1.0) = 0.80;
uniform sampler2D waterTexture;
uniform sampler2D heightMap;
uniform float offset = 0.0;
uniform float strength = 1.0;
uniform float scale = 1.0;

void vertex() {
	VERTEX = VERTEX + vec3(0.0, texture(heightMap, UV).r * strength + offset, 0.0);
}

void fragment() {
	// Place fragment code here.
	ALBEDO = texture(waterTexture, UV * scale).rgb;
	ALPHA = alpha;
}
