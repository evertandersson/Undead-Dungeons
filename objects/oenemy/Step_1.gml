if (hp <= 0)
{
	with (instance_create_layer(x,y,layer,oEnemyDead))
	{
		if (oEnemy.hitfrom = 1) 
		{					
			hsp = vsp * 4;
		}
		else if (oEnemy.hitfrom = 2)
		{
			hsp = vsp * -4;
		}
		if (sign(hsp) != 0) image_xscale = sign(hsp);
	}
	global.gold += 20;
	instance_destroy();

}