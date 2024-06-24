//Vertical Collision
y = y + vsp;

if (oGolem.boss_start == 4)
{
	if (y > 1500) vsp = -2;
	else vsp = 0;
}

if (oGolem.boss_start == 0) && (oFocus.bridge_activate == 0)
{
	y = 1792;
}
