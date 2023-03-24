shader_type spatial;

uniform sampler2D noise;
uniform sampler2D gradient;
uniform float height: hint_range(0.0, 1000.0, 0.1) = 4;

void vertex() {
	float h = texture(noise, UV).r;
	vec3 v = VERTEX;
	
	v.y = v.y + h * height - height / 2.0;
	
	VERTEX = v;
}

void fragment() {
	// Place fragment code here.
	vec4 color = texture(gradient, vec2(texture(noise, UV).r, 0));
	ALBEDO = color.rgb;
	ALPHA = color.a;
}