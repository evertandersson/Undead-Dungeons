if (room = Room1)
{
	if (oFocus.bridge_activate == 1)
	{
		direction = other.image_angle;
		if place_meeting(x,y,oBridgePt1) 
		{
			speed = 0;
			timer++;
			if (timer > 60) 
			{
				oGolem.boss_start = 4;
				oFocus.bridge_activate = 2;
			}
		}
		else speed = 2;
	}
}
if (room = Room3)
{
	if (oBringerOfDeath.bringerofdeath_activate < 2)
	{
		x = 2560;
		y = 3552;
	}
	if (oBringerOfDeath.bringerofdeath_activate == 2)
	{
		if (x <= 2752)
		{
			speed = 2;
		}
		else speed = 0;
	}
}