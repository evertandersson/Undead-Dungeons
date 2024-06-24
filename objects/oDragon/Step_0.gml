/// @description Insert description here
// You can write your code in this editor

key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);
key_attack = keyboard_check_pressed(vk_shift);

if (room == Room5) 
{
	var ex, ey;
	ex = oDragonTarget.x+500;
	ey = oDragonTarget.y;

	image_angle = point_direction(x,y,ex,ey);

	x = x + hsp;
	hsp = hsp + hsp_spd;

	yTo = oDragonTarget.y;
	y += (yTo - y) / 25;

	image_index += 0.2;
	if (image_index >= 9) image_index = 0;

	if (dragon_activate = 0) sprite_index = sDragon;
	else if (dragon_activate = 1) sprite_index = sDragonRide;


	if (dragon_activate == 1)
	{
		hsp_spd = 0.005;	
		if (key_right) hsp += 0.03;
		else if (key_left) && (hsp > 1) hsp -= 0.03;
	}

	if (dragon_activate == 2)
	{
		hsp = 0;
		hsp_spd = 0;
		visible = false;
	}

	if (place_meeting(x,y,oWallDeath)) or (place_meeting(x,y,oMovingSpikes)) or (place_meeting(x,y,oFlyingEye))
	{
		if (dragon_activate == 1) 
		{
			instance_create_layer(x,y,"Player",oDragonExplosion);
			ScreenShake(10,10);
		}
		dragon_activate = 2;
		oPlayer.state = PLAYERSTATE.DEAD;
	}
}
	
