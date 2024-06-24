/// @description Insert description here
// You can write your code in this editor
if (x == 5856) && (y == 544)
{
	if (global.get_letter == true) instance_destroy();
}

if (x == 2912) && (y == 3424)
{
	if (oBringerOfDeath.bringerofdeath_activate == 2) instance_destroy();
}

if (room == Room4)
{	
	if (oDemonKing.demonking_activate == 0)
	{
		if (y = 0)
		{
			y = 96;
		}
		if (y == 896)
		{
			y = 800;
		}
	}
	if (oDemonKing.demonking_activate == 1)
	{
		if (oGhostPlatform.timer > 100) && (oGhostPlatform.timer < 200)
		{
			if (y == 96)
			{
				y = 0;
			}
		}
		if (oGhostPlatform.timer > 200)
		{
			if (y = 0)
			{
				y = 96;
			}
		}
		if (oGhostPlatform.timer > 300) && (oGhostPlatform.timer < 400)
		{
			if (y == 800)
			{
				y = 896;
			}
		}
		if (oGhostPlatform.timer > 400)
		{
			if (y == 896)
			{
				y = 800;
			}
		}
	}
	if (oDemonKing.demonking_activate == 2)
	{
		if (y = 0)
		{
			y = 96;
		}
		if (y == 896)
		{
			y = 800;
		}
		
		if (x == 12880) && (y == 352)
		{
			instance_destroy();
		}
		
	}
}