if (room == graveyard)
{
	with (oPlayer)
	{
		SlideTransition(TRANS_MODE.GOTO,dungeons);
	}
}

if (room == dungeons)
{
	with (oPlayer)
	{
		SlideTransition(TRANS_MODE.GOTO,Room1);
	}
}


if (room == Room1)
{
	with (oPlayer)
	{
		SlideTransition(TRANS_MODE.GOTO,Room2);
	}
}

if (room == Room2) && (keyboard_check_pressed(vk_down))
{
	with (oPlayer)
	{
		global.checkpoint = 5;
		SlideTransition(TRANS_MODE.GOTO,rTavern);
	}
}
if (room == Room2) && (x = 7936)
{
	with (oPlayer)
	{
		global.checkpoint = 6;
		SlideTransition(TRANS_MODE.GOTO,Room3);
	}
}

if (room == Room3) && (x = 3488)
{
	with (oPlayer)
	{
		global.checkpoint = 9;
		SlideTransition(TRANS_MODE.GOTO,Room4);
	}
}

if (room == Room4)
{
	with (oPlayer)
	{
		global.checkpoint = 12;
		SlideTransition(TRANS_MODE.GOTO,Room5);
	}
}

if (room == rTavern)
{
	with (oPlayer)
	{
		SlideTransition(TRANS_MODE.GOTO,Room2);
	}
}