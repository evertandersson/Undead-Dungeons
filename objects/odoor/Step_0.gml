//Vertical Collision
y = y + vsp;

if (instance_exists(oGolem))
{
	if (oGolem.boss_start == 2)
	{
		vsp = -2;
	}

	if (oGolem.boss_start == 0) && (oFocus.bridge_activate == 0)
	{
		y = 1792;
	}
}