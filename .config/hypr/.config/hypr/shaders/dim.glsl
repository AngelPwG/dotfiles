precision mediump float;
varying vec2 v_texcoord;
uniform sampler2D tex;

void main() {
    vec4 pixColor = texture2D(tex, v_texcoord);
    
    // AQUÍ AJUSTAS EL BRILLO:
    // 0.8 = Brillo al 80%
    // 0.5 = Brillo al 50%
    // 0.2 = Muy oscuro (20%)
    float brillo = 0.2; 

    gl_FragColor = vec4(pixColor.rgb * brillo, pixColor.a);
}
