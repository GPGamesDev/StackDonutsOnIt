//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 newCol = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	newCol.r = 0.;
	newCol.g = 0.;
	newCol.b = 0.;
	newCol.a = newCol.a*.5;
	
	gl_FragColor = newCol;
}
