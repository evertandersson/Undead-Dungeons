// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BringerStateAttack()
{
	if (image_index > 4) and (image_index < 6) and (oPlayer.take_damage == 0) bringerattack = 1;
	if (oPlayer.take_damage == 1) bringerattack = 0;
	if (image_index >= 6) bringerattack = 0;
	
	image_speed = 0.2;
	sprite_index = sBringerOfDeathAttack;
	
	if (image_index > image_number - 1) 
	{
		if (hitfrom = 1) 
		{
			bringer_hsp = -3;
			image_xscale = -1;
		}
		else if (hitfrom = 2) 
		{
			bringer_hsp = 3;
			image_xscale = -1;
		}
		state = BRINGERSTATE.IDLE;
	}
}