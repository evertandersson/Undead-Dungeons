//Horizontal Collision
/*if (place_meeting(x+hsp,y,oWall)) 
{
	while (!place_meeting(x+sign(hsp),y,oWall)) 
	{
		x = x + sign(hsp);
	}	
	hsp = 0;
}
*/
x = x + hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,oWall)) 
{
	while (!place_meeting(x,y+sign(vsp),oWall)) 
	{
		y = y + sign(vsp);
	}	
	vsp = -vsp;
}
y = y + vsp;

if (instance_exists(oDragon))
{
	if (oDragon.x > 7300) hsp = -3;
}

//Chooses direction for player to get hit from
if x > oPlayer.x 
{
	hitfrom = 1;
}
else if x < oPlayer.x
{
	hitfrom = 2;
}

if (hsp != 0) image_xscale = sign(hsp);