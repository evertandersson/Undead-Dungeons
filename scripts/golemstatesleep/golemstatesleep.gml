function GolemStateSleep() 
{
	boss_hsp = 3;
	boss_vsp = 0;
	grv = 0.1;
	attack_charge = 0;
	attack_delay = 0;
	attack_times = 0;
	sprite_index = sGolem;
	image_speed = 0.3;
	x = 3936;
	y = 1920;
	hp = hp_max;
	if (oPlayer.x < 4700 && oPlayer.x > 4500) && (oPlayer.y > 1500)
	{
		global.checkpoint = 2;
		boss_start = 1;
		audio_stop_sound(snd_FirstDungeonTheme);
		if !audio_is_playing(snd_GolemTheme) audio_play_sound(snd_GolemTheme,1,true);
		state = GOLEMSTATE.IDLE;
	}
}