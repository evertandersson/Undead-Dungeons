//Horizontal Collision
if (place_meeting(x+hsp,y,oWall)) 
{
	while (!place_meeting(x+sign(hsp),y,oWall)) 
	{
		x = x + sign(hsp);
	}	
	vsp = -vsp;
}
if place_meeting(x,y-1,oPlayer)
{
	oPlayer.vsp_carry = vsp;
}

y = y + vsp;
