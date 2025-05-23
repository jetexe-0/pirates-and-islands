shader_type canvas_item;

uniform vec2 blur_amount = vec2(0.5, 0.5); // Controls blur strength

void fragment() {
    vec2 tex_size = vec2(textureSize(TEXTURE, 0)); // ✅ CORRECT in Godot 4
    vec2 uv = UV;
    vec4 sum = vec4(0.0);

    // Simple 5x5 blur
    for (int x = -2; x <= 2; x++) {
        for (int y = -2; y <= 2; y++) {
            vec2 offset = vec2(float(x), float(y)) * blur_amount / tex_size;
            sum += texture(TEXTURE, uv + offset);
        }
    }

    sum /= 25.0;
    COLOR = sum;
}
