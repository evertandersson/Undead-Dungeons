if (room != Room5)
{
	x = oCamera.x;
	y = oCamera.y - 200;
}
if (room == Room5)
{
	x = oCamera.x + 250;
	y = oCamera.y - 200;
}

if oPlayer.sprite_index = sPlayerDead
{
	
	if oPlayer.image_index > 12
	{
		if (!audio_is_playing(snd_YouDied)) audio_play_sound(snd_YouDied,10,false);
		image_alpha = image_alpha + 0.025;
	}
	if (image_alpha > 5) 
	{
		if (global.checkpoint = 0)
		{
			oPlayer.x = 224;
			oPlayer.y = 576;
			oPlayer.sprite_index = sPlayer;
			oPlayer.state = PLAYERSTATE.FREE;
			image_alpha = 0;
		}
		if (global.checkpoint = 1)
		{
			oPlayer.x = 2976;
			oPlayer.y = 2464;
			oPlayer.sprite_index = sPlayer;
			oPlayer.state = PLAYERSTATE.FREE;
			image_alpha = 0;
		}	
		if (global.checkpoint = 2)
		{
			oPlayer.x = 4832;
			oPlayer.y = 1792;
			oPlayer.sprite_index = sPlayer;
			oPlayer.state = PLAYERSTATE.FREE;
			oGolem.boss_start = 0;
			image_alpha = 0;
		}
		if (global.checkpoint = 3)
		{
			oPlayer.x = 160;
			oPlayer.y = 512;
			oPlayer.sprite_index = sPlayer;
			oPlayer.state = PLAYERSTATE.FREE;
			image_alpha = 0;
		}

		oPlayer.hp = oPlayer.hp_max;
	}
}