/// @description Insert description here
// You can write your code in this editor
x = x + hsp;
y = reaper_y;

if (oPlayer.x < 6120) && (oPlayer.y > 2300) && (oPlayer.y < 2700) && (global.reaper != 2)
{
	reaper_y = 2272;
	x = 7150;
	audio_play_sound(snd_Reaper,1,false);
	global.reaper = 2;
}

	if (global.reaper = 1)
	{
		audio_stop_sound(snd_FirstDungeonTheme);
		if (!audio_is_playing(snd_ReaperTheme)) audio_play_sound(snd_ReaperTheme,1,true);
		if (visible == false) audio_play_sound(snd_Reaper,1,false);
		visible = true;
		reaper_y += ((reaper_y_target - reaper_y) / reaper_speed); 
	
		if (reaper_y < (reaper_y_target + 0.05))
		{
			if (sprite_index != sReaperAttack) image_index = 0;
			sprite_index = sReaperAttack;
			hsp = 3.5;
		}
	}
	if (global.reaper == 2)
	{
		image_xscale = -1;
		hsp = -2.8;
	}