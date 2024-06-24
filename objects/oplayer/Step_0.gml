//Get Player Input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);
key_attack = keyboard_check_pressed(vk_shift);

gold_x = 134;

switch (state)
{
	case PLAYERSTATE.FREE: PlayerStateFree(); break;
	case PLAYERSTATE.ATTACK_SLASH: PlayerStateAttackSlash(); break;
	case PLAYERSTATE.ROLL: PlayerStateRoll(); break;
	case PLAYERSTATE.NOTMOVE: PlayerStateNotMove(); break;
	case PLAYERSTATE.DEAD: PlayerStateDead(); break;
}


if (room == Room5) && (oDragon.dragon_activate == 1) 
{
	state = PLAYERSTATE.NOTMOVE; 
	oPlayer.visible = 0;
}

if (flash = 1) 
{
	audio_play_sound(snd_PlayerHit,1,false);
	ScreenShake(5,10);
}

if (place_meeting(x,y,oReaper))
{
	if (state != PLAYERSTATE.DEAD) 
	{
		flash = 3;
		audio_play_sound(snd_PlayerHit,1,false);
	}
	hp = 0;
	state = PLAYERSTATE.DEAD;
}