if (room = Room3)
{	
	if (oBringerOfDeath.bringerofdeath_activate = 0)
	{
		x = 2912;
		y = 2912;
	}
	if (oBringerOfDeath.bringerofdeath_activate = 1)
	{
		if (y < 3136) vsp = 3;
		else vsp = 0;
	}
	if (oBringerOfDeath.bringerofdeath_activate = 2)
	{
		if (y > 2912) vsp = -3;
		else vsp = 0;
	}
	y = y + vsp;
}