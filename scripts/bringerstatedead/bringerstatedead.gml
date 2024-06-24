// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BringerStateDead()
{
	sprite_index = sBringerOfDeathDead;
	image_speed = 0.3;
	if (image_index > image_number - 1)
	{
		visible = false;
		bringerofdeath_activate = 2;
	}
}