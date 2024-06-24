// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateRoll()
{	
	hsp = (walksp * image_xscale);
	
	sprite_index = sPlayerRoll;
	image_speed = 1.3;

	vsp = vsp + grv;
	
	if (place_meeting(x,y+vsp,oWall)) 
	{
		while (!place_meeting(x,y+sign(vsp),oWall)) 
		{
			y = y + sign(vsp);
		}	
		vsp = 0;
	}
	if (place_meeting(x,y+vsp,oGhostPlatform)) 
	{
		while (!place_meeting(x,y+sign(vsp),oGhostPlatform)) 
		{
			y = y + sign(vsp);
		}	
		vsp = 0;
	}
	if (place_meeting(x,y+vsp,oBridgePt1)) 
	{
		while (!place_meeting(x,y+sign(vsp),oBridgePt1)) 
		{
			y = y + sign(vsp);
		}	
		vsp = 0;
	}
	y = y + vsp;

	if (place_meeting(x+hsp,y,oWall))
	{
		while (!place_meeting(x+sign(hsp),y,oWall))
		{
			x = x + sign(hsp);
		}	
		hsp = 0;
	}
	if (place_meeting(x+hsp,y,oGhostPlatform))
	{
		while (!place_meeting(x+sign(hsp),y,oGhostPlatform))
		{
			x = x + sign(hsp);
		}	
		hsp = 0;
	}
	x = x + hsp;
	
	if (image_index > image_number - 1)
	{
		walksp = 4;
		state = PLAYERSTATE.FREE;
	}
}