//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec4 u_uv;

void main()
{
	vec4 colour = texture2D( gm_BaseTexture, v_vTexcoord );
	float posX = (v_vTexcoord.x-u_uv[0])/(u_uv[2]-u_uv[0]);
	float posY = (v_vTexcoord.y-u_uv[1])/(u_uv[3]-u_uv[1]);
	
	colour.a = colour.a*(step(0.5,posY)+(1.-step(.33,posX))+step(.67,posX));
	
	gl_FragColor = colour;
}
