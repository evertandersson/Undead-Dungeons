if (room == Room1)	
{
	if (oGolem.boss_start == 1)
	{
		x = 4288;
		y = 1760;
	}

	if (oGolem.boss_start == 2)
	{
		x = oPlayer.x;
		y = oPlayer.y;
	}

	if (oGolem.boss_start == 3)
	{
		direction = other.image_angle;
	
		if (x > 6943) && (y < 829)
		{
			speed = 0;
			bridge_activate = 1;
		}
		else
		{
			speed = 10;
		}
	}
}

if (room = Room3)
{
	if (oBringerOfDeath.bringerofdeath_activate = 1)
	{
		x = 2272;
		y = 3296;
	}
}

if (room = Room4)
{
	if (timer > -1) timer++;
	if (timer < 200) x = 4192;
	if (timer > 200)
	{
		x = x - 9;
		y = 416;
	}
	if (x < 400) timer = -1;
	if (timer = -1) x = oPlayer.x;
	if (global.checkpoint == 10) y = 444;
	if (global.checkpoint == 11) y = 444;
	if (oDemonKing.demonking_activate == 1) x = 12256;
}

if (room = Room5)
{
	x = oDragon.x;
	y = oDragon.y - 150;
}