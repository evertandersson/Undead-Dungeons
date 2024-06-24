// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BringerStateIdle()
{
	sprite_index = sBringerOfDeathWalk;
	image_speed = 0.3;
	
	if (place_meeting(x+bringer_hsp,y,oWall))
	{
		bringer_hsp = -bringer_hsp;
	}
	
	if (grounded) and (!place_meeting(x+bringer_hsp,y+1,oWall))
	{
		bringer_hsp = -bringer_hsp;
	}

	if (place_meeting(x,y+1,oWall))
	{
		grounded = 1;
	}
	else grounded = 0;
	
	if (point_in_circle(oPlayer.x,oPlayer.y,x,y,150))
	{
		bringer_hsp = 0;
		image_index = 0;
		bringerattack = 0;
		state = BRINGERSTATE.ATTACK;
	}
	
	x = x + bringer_hsp;
	y = y + bringer_vsp;
	if (bringer_hsp > 0) or (bringer_hsp < 0) image_xscale = sign(-bringer_hsp);
}