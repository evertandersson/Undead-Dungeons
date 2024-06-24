function PlayerStateFree() 
{
	//Calculate Movement
	var move = key_right - key_left;

	if (take_damage = 0) hsp = (move * walksp) + hsp_carry;
	vsp = vsp + grv;
	
	if (gravity_change == 1) grv = 0.3;
	if (gravity_change == -1) grv = -0.3;

	if (place_meeting(x,y+gravity_change,oWall)) and (key_jump)
	{
		vsp = -7 * gravity_change;
	}
	if (place_meeting(x,y+gravity_change,oPlatform)) and (key_jump)
	{
		vsp = -7 * gravity_change;
	}
	if (place_meeting(x,y+gravity_change,oBridgePt1)) and (key_jump)
	{
		vsp = -7 * gravity_change;
	}
	if (place_meeting(x,y+gravity_change,oGhostPlatform)) and (key_jump)
	{
		vsp = -7 * gravity_change;
	}
	
	if (room = Room4)
	{
		if (oLever.elevator_up == 1)
		{
			state = PLAYERSTATE.NOTMOVE;
		}
	}
	
	//Change gravity
	if (global.switchgravity == 1)
	{
		if (keyboard_check_pressed(ord("Z"))) && (place_meeting(x,y+gravity_change,oWall))
		{
			switch (gravity_change)
			{
				case 1: 
					gravity_change = -1;
				break;
				case -1: 
					gravity_change = 1;
				break;
			}
		}
		if (keyboard_check_pressed(ord("Z"))) && (place_meeting(x,y+gravity_change,oGhostPlatform))
		{
			switch (gravity_change)
			{
				case 1: 
					gravity_change = -1;
				break;
				case -1: 
					gravity_change = 1;
				break;
			}
		}
	}
	
	//Roll
	if (global.rollability == 1)
	{
		if (place_meeting(x,y+gravity_change,oWall)) and (keyboard_check(vk_control))
		{
			walksp = 7;
			image_index = 0;
			state = PLAYERSTATE.ROLL;
		}
		if (place_meeting(x,y+gravity_change,oBridgePt1)) and (keyboard_check(vk_control))
		{
			walksp = 7;
			image_index = 0;
			state = PLAYERSTATE.ROLL;
		}
		if (place_meeting(x,y+gravity_change,oGhostPlatform)) and (keyboard_check(vk_control))
		{
			walksp = 7;
			image_index = 0;
			state = PLAYERSTATE.ROLL;
		}
	}

	//Power Ups
	if (doubleJump == 1)
	{
		if (!place_meeting(x,y+gravity_change,oWall)) && (!place_meeting(x,y+gravity_change,oPlatform)) && (!place_meeting(x,y+gravity_change,oBridgePt1)) && (!place_meeting(x,y+gravity_change,oGhostPlatform)) 
		{
			if (key_jump) && (jumpInAir == 0) && (take_damage == 0) && ((image_yscale = 1) or (image_yscale = -1))
			{
				vsp = -6 * gravity_change;
				jumpInAir = 1;
			}
		}
		else
		{
			jumpInAir = 0;
		}
	}
	
	if (place_meeting(x,y,oBringerOfDeath)) && (oBringerOfDeath.state == BRINGERSTATE.ATTACK) && (oBringerOfDeath.bringerattack = 1)
	{
	take_damage = 1;
	if (hp > 0) 
	{
		if take_damage = 1
		{	
			hp = hp - 20;
			flash = 3;
			vsp = -5;

			if (vsp < 0)
			{
				if (oBringerOfDeath.hitfrom = 1) 
				{					
					hsp = vsp;
				}
				else if (oBringerOfDeath.hitfrom = 2)
				{
					hsp = -vsp;
				}
			}
		}
	}
		else
		{
			state = PLAYERSTATE.DEAD;
		}
	}
	
	if (place_meeting(x,y,oEnemy))
	{
		take_damage = 1;
		if (hp > 0) 
		{
			if take_damage = 1
			{	
				hp = hp - 5;
				flash = 3;
				vsp = -5;

				if (vsp < 0)
				{
					if (oEnemy.hitfrom = 1) 
					{					
						hsp = vsp;
					}
					else if (oEnemy.hitfrom = 2)
					{
						hsp = -vsp;
					}
				}
			}
		}
		else
		{
			state = PLAYERSTATE.DEAD;
		}
	}
	
	if (place_meeting(x,y,oHellhound)) && (oHellhound.attack = 1)
	{
		take_damage = 1;
		if (hp > 0) 
		{
			if take_damage = 1
			{	
				hp = hp - 5;
				flash = 3;
				vsp = -5;

				if (vsp < 0)
				{
					if (instance_nearest(x,y,oHellhound).hitfrom = 1) 
					{					
						hsp = vsp;
					}
					else if (instance_nearest(x,y,oHellhound).hitfrom = 2)
					{
						hsp = -vsp;
					}
				}
			}
		}
		else
		{
			state = PLAYERSTATE.DEAD;
		}
	}

	if (place_meeting(x,y,oFlyingEye))
	{
		take_damage = 1;
		if (hp > 0) 
		{
			if take_damage = 1
			{				
				hp = hp - 10;
				flash = 3;
				vsp = -5;

				if (vsp < 0)
				{
					if (oFlyingEye.hitfrom = 1) 
					{					
						hsp = vsp;
					}
					else if (oFlyingEye.hitfrom = 2)
					{
						hsp = -vsp;
					}
				}
			}
			else
			{
				state = PLAYERSTATE.DEAD;
			}
		}
	}
		
	if (place_meeting(x,y,oGolem)) && (oGolem.hp > 0)
	{
		take_damage = 1;
		if (hp > 0) 
		{
			if take_damage = 1
			{				
				hp = hp - 5;
				flash = 3;
				vsp = -5;

				if (vsp < 0)
				{
					if (oGolem.hitfrom = 1) 
					{					
						hsp = vsp;
					}
					else if (oGolem.hitfrom = 2)
					{
						hsp = -vsp;
					}
				}
			}
		}
		else
		{
			state = PLAYERSTATE.DEAD;
		}	
	}
	
	if (place_meeting(x,y,oFireball))
	{
		take_damage = 1;
		if (hp > 0) 
		{
			if take_damage = 1
			{				
				if (room = Room1) hp = hp - 5;
				else if (room = Room4) hp = hp - 10;
				flash = 3;
				instance_destroy(instance_nearest(x,y,oFireball));
				take_damage = 0;
			}
		}
		else
		{
			state = PLAYERSTATE.DEAD;
		}
	}
		
	if (place_meeting(x,y,oFireball2))
	{
		take_damage = 1;
		if (hp > 0) 
		{
			if take_damage = 1
			{				
				if (room = Room1) hp = hp - 5;
				else if (room = Room4) hp = hp - 10;
				flash = 3;
				instance_destroy(instance_nearest(x,y,oFireball2));
				take_damage = 0;
			}
		}
		else
		{
			state = PLAYERSTATE.DEAD;
		}
	}
	
	if (place_meeting(x,y,oReaperProjectile))
	{
		take_damage = 1;
		if (hp > 0) 
		{
			if take_damage = 1
			{				
				hp = hp - 15;
				flash = 3;
				vsp = -4;
				
				if (vsp < 0)
				{
					if (oReaperProjectile.hitfrom == 1)
					{					
						hsp = vsp;
					}
					else if (oReaperProjectile.hitfrom == 2)
					{
						hsp = -vsp;
					}
				}
			}
		}
		else
		{
			state = PLAYERSTATE.DEAD;
		}
	}
	
	if (place_meeting(x,y,oHellbeastFire))
	{
		take_damage = 1;
		if (hp > 0) 
		{
			if take_damage = 1
			{				
				hp = hp - 15;
				flash = 3;
				vsp = -4;
				
				if (vsp < 0)
				{
					if (instance_nearest(x,y,oHellbeastFire).hitfrom == 1)
					{					
						hsp = vsp;
					}
					else if (instance_nearest(x,y,oHellbeastFire).hitfrom == 2)
					{
						hsp = -vsp;
					}
				}
			}
		}
		else
		{
			state = PLAYERSTATE.DEAD;
		}
	}
	
	if (take_damage = 1)
	{
		if (place_meeting(x,y+gravity_change,oWall)) take_damage = 0;
		if (place_meeting(x,y+gravity_change,oGhostPlatform)) take_damage = 0;
	}
	
	if (place_meeting(x,y,oWallDeath)) or (place_meeting(x,y-1,oMovingSpikes))
	{
		flash = 3;
		hp = 0;
		state = PLAYERSTATE.DEAD;
	}
		
	//Horizontal Collision
	if (place_meeting(x+hsp,y,oWall))
	{
		while (!place_meeting(x+sign(hsp),y,oWall))
		{
			x = x + sign(hsp);
		}	
		hsp = 0;
	}
	if (place_meeting(x+hsp,y,oGhostGate))
	{
		while (!place_meeting(x+sign(hsp),y,oGhostGate))
		{
			x = x + sign(hsp);
		}	
		hsp = 0;
	}
	if (place_meeting(x+hsp,y,oPlatform))
	{
		while (!place_meeting(x+sign(hsp),y,oPlatform))
		{
			x = x + sign(hsp);
		}	
		hsp = 0;
	}
	if (place_meeting(x+hsp,y,oDoor))
	{
		while (!place_meeting(x+sign(hsp),y,oDoor))
		{
			x = x + sign(hsp);
		}	
		hsp = 0;
	}
	if (place_meeting(x+hsp,y,oDoor2))
	{
		while (!place_meeting(x+sign(hsp),y,oDoor2))
		{
			x = x + sign(hsp);
		}	
		hsp = 0;
	}
	if (place_meeting(x+hsp,y,oGhostPlatform))
	{
		while (!place_meeting(x+sign(hsp),y,oGhostPlatform))
		{
			x = x + sign(hsp);
		}	
		hsp = 0;
	}
	x = x + hsp;

	//Vertical Collision
	if (place_meeting(x,y+vsp,oWall)) 
	{
		while (!place_meeting(x,y+sign(vsp),oWall)) 
		{
			y = y + sign(vsp);
		}	
		vsp = 0;
		if (key_attack) 
		{
			state = PLAYERSTATE.ATTACK_SLASH;
		}
	}
	if (place_meeting(x,y+vsp,oGhostPlatform)) 
	{
		while (!place_meeting(x,y+sign(vsp),oGhostPlatform)) 
		{
			y = y + sign(vsp);
		}	
		vsp = 0;
		if (key_attack) 
		{
			state = PLAYERSTATE.ATTACK_SLASH;
		}
	}
	if (place_meeting(x,y+vsp,oPlatform)) 
	{
		while (!place_meeting(x,y+sign(vsp),oPlatform)) 
		{
			y = y + sign(vsp);
		}	
		vsp = 0;
		if (key_attack) state = PLAYERSTATE.ATTACK_SLASH;
	}
	if (place_meeting(x,y+vsp,oElevator)) 
	{
		while (!place_meeting(x,y+sign(vsp),oElevator)) 
		{
			y = y + sign(vsp);
		}	
		vsp = vsp_carry;
		if (key_attack) state = PLAYERSTATE.ATTACK_SLASH;
	}
	if (place_meeting(x,y+vsp,oGhostElevator)) 
	{
		while (!place_meeting(x,y+sign(vsp),oGhostElevator)) 
		{
			y = y + sign(vsp);
		}	
		vsp = vsp_carry;
		if (key_attack) state = PLAYERSTATE.ATTACK_SLASH;
	}
	
	if (place_meeting(x,y+vsp,oBridgePt1)) 
	{
		while (!place_meeting(x,y+sign(vsp),oBridgePt1)) 
		{
			y = y + sign(vsp);
		}	
		vsp = 0;
		if (key_attack) 
		{
			state = PLAYERSTATE.ATTACK_SLASH;
		}
	}
	y = y + vsp;

	//Animation
	if (!place_meeting(x,y+gravity_change,oWall)) && (!place_meeting(x,y+gravity_change,oPlatform)) && (!place_meeting(x,y+gravity_change,oElevator)) && (!place_meeting(x,y+gravity_change,oBridgePt1)) && (!place_meeting(x,y+gravity_change,oGhostPlatform)) && (!place_meeting(x,y+gravity_change,oGhostElevator))
	{
		sprite_index = sPlayerA;
		//image_speed = 0;
		if (gravity_change = 1)
		{
			if (sign(vsp) > 0) image_index = 11; else image_index = 1; 	
		}
		else if (gravity_change = -1)
		{
			if (sign(vsp) < 0) image_index = 11; else image_index = 1; 	
		}
	}
	else 
	{
		image_speed = 1;
		if (hsp == 0)
		{
			sprite_index = sPlayer;
		}
		else
		{
			if key_left == true or key_right == true
			{
				sprite_index = sPlayerR;
				image_xscale = sign(hsp);
			}
			else
			{	
				sprite_index = sPlayer;
			}
		}	
	}
	
	if (gravity_change = 1) 
	{
		if (image_yscale < 1) image_yscale += 0.1;
		
	}
	if (gravity_change = -1) 
	{
		if (image_yscale > -1) image_yscale -= 0.1;
	}
	
	if (!place_meeting(x,y+1,oPlatform)) hsp_carry = 0;
	if (!place_meeting(x,y+1,oElevator)) vsp_carry = 0;
	
}