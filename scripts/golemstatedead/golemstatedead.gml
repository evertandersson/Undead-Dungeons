// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GolemStateDead() 
{
	grv = 0.3;
	sprite_index = sGolemDead;
	mask_index = sGolemDead;
		
	//Vertical Collision
	if (place_meeting(x,y+boss_vsp,oWall))
	{
		boss_vsp = 0;
	}
	y = y + boss_vsp;
	boss_vsp = boss_vsp + grv;
	
	if (boss_vsp = 0) && (image_index > 10) 
	{
		y = 1862;

	}
	
	if (image_index < 12) image_speed = 0.25;
	else 
	{
		image_speed = 0;
		if (boss_start == 1) boss_start = 2;
	}
}