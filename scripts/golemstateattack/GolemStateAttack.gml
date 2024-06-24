function GolemStateAttack() 
{
	if (x < oPlayer.x) image_xscale = 1;
	if (x > oPlayer.x) image_xscale = -1;
	boss_hsp = 0;
	if (sprite_index = sGolemAttack1)
	{
		if (image_index != 8) image_speed = 0.25;
	}
	if (sprite_index = sGolemAttack2)
	{
		if (image_index != 6) image_speed = 0.25;	
	}
		
	if (attack_delay >= 0) attack_delay--;
	
	if (sprite_index = sGolemAttack1) 
	{
		if (image_index = 8) 
		{
			if attack_delay <= 0 
			{
				image_speed = 0;
				if (image_xscale > 0) instance_create_layer(x+160, y-20, "Player", oFireball);
				else if (image_xscale < 0) instance_create_layer(x-160, y-20, "Player", oFireball);
				if (hp >= 30) attack_delay = 25;
				if (hp < 30) attack_delay = 20;
				attack_times++;
			}
		}
	}
	else if (sprite_index = sGolemAttack2)
	{
		if (image_index = 6)
		{
			image_speed = 0;
			instance_create_layer(x,y,"Platforms",oFireball2)
			attack_times++;
		}
	}
	
	if (hp >= 30)
	{
		if (attack_times = 3) 
		{
			attack_charge = 0;
			image_index = 9;
			image_speed = 0.25;
			attack_times = 0;
		}
	}
	else if hp < 30 && hp > 15
	{
		if (attack_times = 5) 
		{
			attack_charge = 0;
			image_index = 9;
			image_speed = 0.25;
			attack_times = 0;
		}
	}
	else if hp <= 15
	{
		if (attack_times = 18) 
		{
			oFireball2.fireSpeed = 5;
			attack_charge = 0;
			image_index = 7;
			attack_times = 0;
		}
	}
	
	
	if (image_index = 11) && (sprite_index = sGolemAttack1)
	{
		sprite_index = sGolem;
	}
	if (image_index = 7) && (sprite_index = sGolemAttack2)
	{
		sprite_index = sGolem;
	}
	
	if sprite_index = sGolem
	{
		if (image_xscale > 0) boss_hsp = 3;
		else if (image_xscale < 0) boss_hsp = -3;

		image_index = 1;
		state = GOLEMSTATE.IDLE;
	}
}