function GolemStateIdle() 
{	
	if (hp >= 30) grv = 0.1;
	if (hp < 30) grv = 0.3;
	
	if x > oPlayer.x 
	{
		hitfrom = 1;
	}
	else if x < oPlayer.x
	{
		hitfrom = 2;
	}
	
	if (attack_charge < 5) 
	{
		sprite_index = sGolem;
		attack_charge = attack_charge + 0.01;
	}
	image_speed = 0.5;
	if (boss_hsp != 0) image_xscale = sign(boss_hsp);
	
	//Horizontal Collision
	if (place_meeting(x+boss_hsp,y,oWall)) or (place_meeting(x+boss_hsp,y,oGate))
	{
		boss_hsp = -boss_hsp;
	}
	x = x + boss_hsp;
	
	//Vertical Collision
	if (place_meeting(x,y+boss_vsp,oWall))
	{
		if (hp >= 30) boss_vsp = -7;
		if (hp < 30) boss_vsp = -12;
			
	}
	y = y + boss_vsp;
	boss_vsp = boss_vsp + grv;
	
	if (hp >= 30)
	{
		if (attack_charge = 5)
		{
			image_xscale = sign(boss_hsp);
			if (hp > 15) sprite_index = sGolemAttack1;
			image_index = 0;
			state = GOLEMSTATE.ATTACK;
		}
	}
	if (hp < 30)
	{
		if (attack_charge > 4)
		{
			image_xscale = sign(boss_hsp);
			if (hp > 15) sprite_index = sGolemAttack1;
			if (hp <= 15) sprite_index = sGolemAttack2;
			state = GOLEMSTATE.ATTACK;
		}
	}
}