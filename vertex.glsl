precision mediump float;
attribute vec2 vPosition;
attribute vec3 vColor;
varying vec3 fColor;
uniform float scale;

void main() {
  fColor = vColor;

  mat4 matriks1 = mat4(
    1.0, 0.0, 0.0, -0.3, // - (0.6 - 0.0) / 2 + 0.0) triangle
    0.0, 1.0, 0.0, -0.5,  // - (0.5 - -0.4) /2 + -0.4) triangle
    0.0, 0.0, 1.0, 0.0,
    0.0, 0.0, 0.0, 1.0
  );
  gl_Position = vec4(vPosition, 0.0, 1.0) * matriks1;

  mat4 skalasi = mat4(
    scale, 0.0, 0.0, 0.0,
    0.0, 1.0, 0.0, 0.0,
    0.0, 0.0, 1.0, 0.0,
    0.0, 0.0, 0.0, 1.0
  );
  gl_Position = gl_Position * skalasi;  

  // invers
  mat4 inversmat1 = mat4(
    1.0, 0.0, 0.0, 0.3,
    0.0, 1.0, 0.0, 0.5,
    0.0, 0.0, 1.0, 0.0,
    0.0, 0.0, 0.0, 1.0
  );
  gl_Position = gl_Position * inversmat1;  
  
}
