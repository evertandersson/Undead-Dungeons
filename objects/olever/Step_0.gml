if (image_index == 0)
{
	if (room = Room1)
	{
		if (place_meeting(x,y,oPlayer)) && (keyboard_check(ord("E")))
		{
			oGolem.boss_start = 3;	
			image_index = 1;
		}
	}
	if (room = Room3)
	{
		if (place_meeting(x,y,oPlayer)) && (keyboard_check(ord("E")))
		{
			image_index = 1;
			instance_destroy(oDoor);
			global.reaper = 1;
		}
	}
	if (room = Room4)
	{			
		if (place_meeting(x,y,oPlayer)) && (keyboard_check(ord("E")))
		{
			image_index = 1;
			elevator_up = 1;
		}
	}
}

if (room == Room4) && (image_index == 1)
{
	y = oGhostElevator.y - 44;
}

if (room == Room5) && (y > 532)
{
	elevator_up = 1;
	image_index = 1;
	y = oGhostElevator.y - 44;
}