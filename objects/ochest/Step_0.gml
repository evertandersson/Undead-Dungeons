if (room = Room2)
{
	if (oPlayer.doubleJump == 0)
	{
		if (place_meeting(x,y,oPlayer)) && (keyboard_check(vk_down))
		{
			if (image_index != 3) image_speed = 0.25;
		}
	}

	if (image_index >= 3) 
	{
		image_speed = 0;
		oPlayer.doubleJump = 1;
	}
}
if (room = Room3)
{
	if (global.rollability == 0)
	{
		if (place_meeting(x,y,oPlayer)) && (keyboard_check(vk_down))
		{
			if (image_index != 3) image_speed = 0.25;
		}
	}

	if (image_index >= 3) 
	{
		image_speed = 0;
		global.rollability = 1;
	}
}

if (room = Room4)
{
	if (global.switchgravity == 0)
	{
		if (place_meeting(x,y,oPlayer)) && (keyboard_check(vk_down))
		{
			if (image_index != 3) image_speed = 0.25;
		}
	}

	if (image_index >= 3) 
	{
		image_speed = 0;
		global.switchgravity = 1;
	}
}