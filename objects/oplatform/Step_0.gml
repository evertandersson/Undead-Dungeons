//Horizontal Collision
if (place_meeting(x+hsp,y,oWall)) 
{
	while (!place_meeting(x+sign(hsp),y,oWall)) 
	{
		x = x + sign(hsp);
	}	
	hsp = -hsp;
}
if place_meeting(x,y-1,oPlayer)
{
	oPlayer.hsp_carry = hsp;
}

x = x + hsp;
