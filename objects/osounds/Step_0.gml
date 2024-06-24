if (room = Room2)
{
	global.currentmusic = snd_SummerFallTheme;
	if !audio_is_playing(global.currentmusic) audio_play_sound(global.currentmusic,1,true);
}

if (room = Room3)
{
	if !audio_is_playing(snd_FirstDungeonTheme) && (!audio_is_playing(snd_ReaperTheme)) audio_play_sound(snd_FirstDungeonTheme,1,true);
}

if (room = rTavern)
{
	if !audio_is_playing(snd_TavernSong) audio_play_sound(snd_TavernSong,1,true);
}

if (room = Room4)
{
	if (!audio_is_playing(snd_FirekeepTheme)) audio_play_sound(snd_FirekeepTheme,1,true);
}

if (room = Room5)
{
	if (!audio_is_playing(snd_EpicBattleMusic)) audio_play_sound(snd_EpicBattleMusic,1,true);
}

if (room = Room6)
{
	if (!audio_is_playing(snd_EpicBattleMusic)) audio_play_sound(snd_EpicBattleMusic,1,true);
}

if (oPlayer.image_index == 4) && (oPlayer.sprite_index = sPlayerD)
{
		if !audio_is_playing(snd_SwordSwing) audio_play_sound(snd_SwordSwing,1,false);
}	
