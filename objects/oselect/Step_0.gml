if (oNewGame.image_alpha > 0.9)
{
	if (image_alpha < 1) image_alpha += 0.05;
}

if (keyboard_check_pressed(vk_down))
{
	if (y < 620)
	{
		y = y + 60;
	}
	else
	{
		y = 440;
	}
}

if (keyboard_check_pressed(vk_up))
{
	if (y > 440)
	{
		y = y - 60;
	}
	else
	{
		y = 620;
	}
}

//New Game
if (keyboard_check_pressed(vk_enter)) && (oSELECT.y = 440) 
{
	audio_stop_all();
	SlideTransition(TRANS_MODE.GOTO,cutscene);
}	

//Exit
if (keyboard_check_pressed(vk_enter)) && (oSELECT.y = 620) 
{
	game_end();
}	
