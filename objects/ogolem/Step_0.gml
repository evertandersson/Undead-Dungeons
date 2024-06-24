switch (state)
{
	case GOLEMSTATE.SLEEP: GolemStateSleep(); break;
	case GOLEMSTATE.IDLE: GolemStateIdle(); break;
	case GOLEMSTATE.ATTACK: GolemStateAttack(); break;
	case GOLEMSTATE.DEAD: GolemStateDead(); break;
}

if (oGolem.boss_start == 0) && (global.checkpoint != 2)
{
	if !audio_is_playing(snd_FirstDungeonTheme) audio_play_sound(snd_FirstDungeonTheme,1,true);
}


if (boss_start == 0) state = GOLEMSTATE.SLEEP;
if (hp <= 0)  
{
	if (state != GOLEMSTATE.DEAD) instance_create_layer(oCamera.x,oCamera.y-200,"GUI",oBossDefeated);
	boss_vsp = 2;
	//if (state != GOLEMSTATE.DEAD) global.gold += 700;
	state = GOLEMSTATE.DEAD; 
}