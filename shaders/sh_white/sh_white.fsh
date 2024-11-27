varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main() {
    vec4 col = texture2D(gm_BaseTexture, v_vTexcoord);
    col.rgb = vec3(1.0, 1.0, 1.0); // Set RGB to white
    gl_FragColor = col * v_vColour;
}