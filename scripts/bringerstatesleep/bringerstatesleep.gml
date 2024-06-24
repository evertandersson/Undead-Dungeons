// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BringerStateSleep()
{
	sprite_index = sBringerOfDeath;
	image_speed = 0.3;
	if (oPlayer.x > 1680) && (oPlayer.y > 3100) && (room == Room3)
	{
		bringer_hsp = -3;
		bringerofdeath_activate = 1;
		state = BRINGERSTATE.IDLE;
	}
}