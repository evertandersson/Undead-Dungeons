function PlayerStateAttackSlash() 
{
	x = x + hsp_carry;
	y = y + vsp_carry;
	
	if (place_meeting(x,y-1,oMovingSpikes))
	{
		state = PLAYERSTATE.DEAD;
	}
	
	//Start of Attack
	if (sprite_index != sPlayerD)
	{
		sprite_index = sPlayerD;
		image_index = 0;
		ds_list_clear(hitByAttack);
	}
	//Use attack hitbox and check for hits
	mask_index = sPlayerHitBox;
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x,y,oEnemy,hitByAttackNow,false);
	if (hits=0) var hits = instance_place_list(x,y,oFlyingEye,hitByAttackNow,false);
	if (hits=0) var hits = instance_place_list(x,y,oGolem,hitByAttackNow,false);
	if (hits=0) var hits = instance_place_list(x,y,oBringerOfDeath,hitByAttackNow,false);
	if (hits=0) var hits = instance_place_list(x,y,oHellhound,hitByAttackNow,false);
	if (hits=0) var hits = instance_place_list(x,y,oHellbeast,hitByAttackNow,false);
	if (hits=0) var hits = instance_place_list(x,y,oDemonKing,hitByAttackNow,false);
	if (hits>0)
	{
		for (var i = 0; i < hits; i++)
		{
			//If this instance has not yet been hit by this attack
			var hitID = hitByAttackNow[| i];
			if (ds_list_find_index(hitByAttack,hitID) == -1) 
			{
				ds_list_add(hitByAttack,hitID);
				with (hitID)
				{
					take_damage = 1;
					if take_damage = 1 
					{	
						audio_play_sound(snd_EnemyHit,1,false);
						flash = 3;
						hp = hp - 3;
						vsp = -6;
						if (vsp < 0)
						{
							if (hitfrom = 2) 
							{					
								hsp = vsp/2;
							}
							else if (hitfrom = 1)
							{
								hsp = -vsp/2;
							}
						take_damage = 0;						
						}
					}
				}	
			}	
		}	
	}	
	ds_list_destroy(hitByAttackNow);
	
	mask_index = sPlayer;
	
	if (place_meeting(x,y,oReaperProjectile))
	{
		ds_list_destroy(hitByAttackNow);
		state = PLAYERSTATE.FREE;
	}
	if (place_meeting(x,y,oFireball2))
	{
		ds_list_destroy(hitByAttackNow);
		state = PLAYERSTATE.FREE;
	}
	if (place_meeting(x,y,oHellbeastFire))
	{
		ds_list_destroy(hitByAttackNow);
		state = PLAYERSTATE.FREE;
	}
	
	if (image_index == 4) ScreenShake(5,20);
	
	if (animation_end())
	{
		sprite_index = sPlayer;
		state = PLAYERSTATE.FREE;
	}	
}

