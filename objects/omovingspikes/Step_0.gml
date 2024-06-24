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

if (room = dungeons) 
{
	sprite_index = movingSpikes;
}
if (room = Room1) or (room == Room6)
{
	sprite_index = movingSpikes;
}
if (room = Room3) 
{
	sprite_index = movingSpikes2;
}
if (room = Room4) 
{
	sprite_index = movingSpikes3;
}
if (room = Room5) 
{
	sprite_index = movingSpikes3;
}