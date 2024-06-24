/// @description Insert description here
// You can write your code in this editor

key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);

visible = false;

x = oDragon.x;

if (oDragon.dragon_activate == 1)
{
	if (key_up) && (y > 30) y -= 10;
	else if (key_down) && (!place_meeting(x,y,oWall)) y += 10;	
}