//Vertical Collision
if (room = Room1)
{
	if (oGolem.boss_start == 1)
	{
		if (place_meeting(x,y+vsp,oWall)) 
		{
			while (!place_meeting(x,y+sign(vsp),oWall)) 
			{
				y = y + sign(vsp);
			}	
			vsp = 0;
		}
		y = y + vsp;
		vsp = vsp + grv;
	}

	if (oGolem.boss_start == 0)
	{
		x = 4736;
		y = 1088;
	}
}

if (room = Room3)
{
	if (oBringerOfDeath.bringerofdeath_activate = 1) && ((x+300 < oReaperBoss.x))
	{
		if (y < 2880) vsp = 3;
		else vsp = 0;
	}
	if (oBringerOfDeath.bringerofdeath_activate = 0)
	{
		if (oPlayer.y < 3000)
		{
			x = 1440;
			y = 2688;
		}
		else if (oPlayer.y >= 3000)
		{
			x = 1440;
			y = 2560;
		}
	}
	y = y + vsp;
}