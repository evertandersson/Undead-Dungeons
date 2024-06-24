with (oYouDied)
{
	SlideTransition(TRANS_MODE.GOTO,Room1);
	if (oCheckpoint.checkpoint = 0)
	{
		oPlayer.x = 224;
		oPlayer.y = 576;
		oPlayer.sprite_index = sPlayer;
		oPlayer.state = PLAYERSTATE.FREE;
		oYouDied.image_alpha = 0;
	}
	if (oCheckpoint.checkpoint = 1)
	{
		oPlayer.x = 2976;
		oPlayer.y = 2464;
		oPlayer.sprite_index = sPlayer;
		oPlayer.state = PLAYERSTATE.FREE;
		oYouDied.image_alpha = 0;
	}	
	if (oCheckpoint.checkpoint = 2)
	{
		oPlayer.x = 4832;
		oPlayer.y = 1792;
		oPlayer.sprite_index = sPlayer;
		oPlayer.state = PLAYERSTATE.FREE;
		oGolem.boss_start = 0;
		oYouDied.image_alpha = 0;
	}	
	oPlayer.hp = oPlayer.hp_max;
}