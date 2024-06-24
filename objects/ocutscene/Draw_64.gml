/// @description Insert description here
// You can write your code in this editor

timer += 0.5;
if (!audio_is_playing(snd_Intro)) audio_play_sound(snd_Intro,0,false);

//Draw Text
if (timer < 780)
{
	if (timer > 50)
	{
		alpha = min(alpha+0.02, 1);
		draw_set_alpha(alpha);
		DrawSetText(c_white,fSign,fa_center,fa_top);
		draw_text(x,y,"In the Age of Ancients, the world was dead, shrouded with fog and darkness.");
		draw_set_alpha(1);
	}
	if (timer > 200)
	{
		alpha2 = min(alpha2+0.02, 1);
		draw_set_alpha(alpha2);
		DrawSetText(c_white,fSign,fa_center,fa_top);
		draw_text(x,y+30,"But then, there was fire. Together with the First Flame,");
		draw_set_alpha(1);
	}
	if (timer > 350)
	{
		alpha3 = min(alpha3+0.02, 1);
		draw_set_alpha(alpha3);
		DrawSetText(c_white,fSign,fa_center,fa_top);
		draw_text(x,y+60,"four gods arised from the ashes, and built the world known as Lordran.");
		draw_set_alpha(1);
	}
	if (timer > 500)
	{
		alpha4 = min(alpha4+0.02, 1);
		draw_set_alpha(alpha4);
		DrawSetText(c_white,fSign,fa_center,fa_top);
		draw_text(x,y+90,"The Blacksmith forged four rings that held the power of the First Flame,\neach one to all the four Gods. Thus began the Age of Fire, and for decades\nthey held the world together.");
		draw_set_alpha(1);
	}
	if (timer > 700) && (timer < 780)
	{
		alpha -= 0.04;
		alpha2 -= 0.04;
		alpha3 -= 0.04;
		alpha4 -= 0.04;
	}
}
if (timer < 1700)
{
	if (timer > 780)
	{
		alpha = min(alpha+0.02, 1);
		draw_set_alpha(alpha);
		DrawSetText(c_white,fSign,fa_center,fa_top);
		draw_text(x,y,"Time went by, the Flame started to fade, and so did the Gods.");
		draw_set_alpha(1);
	}
	if (timer > 900)
	{
		alpha2 = min(alpha2+0.02, 1);
		draw_set_alpha(alpha2);
		DrawSetText(c_white,fSign,fa_center,fa_top);
		draw_text(x,y+30,"As the Gods were dying, the world lived on, due to the four rings\nthat still held the power of the First Flame.");
		draw_set_alpha(1);
	}
	if (timer > 1100)
	{
		alpha3 = min(alpha3+0.02, 1);
		draw_set_alpha(alpha3);
		DrawSetText(c_white,fSign,fa_center,fa_top);
		draw_text(x,y+90,"The rings followed the Gods into the ground though, and couldn't be found by anyone.");
		draw_set_alpha(1);
	}
	if (timer > 1300)
	{
		alpha4 = min(alpha4+0.02, 1);
		draw_set_alpha(alpha4);
		DrawSetText(c_white,fSign,fa_center,fa_top);
		draw_text(x,y+120,"And by the time of three thousand years, the Four Rings were completely forgotten...");
		draw_set_alpha(1);
	}
	if (timer > 1600)
	{
		alpha -= 0.04;
		alpha2 -= 0.04;
		alpha3 -= 0.04;
		alpha4 -= 0.04;
	}
}
if (timer < 2850)
{
	if (timer > 1650)
	{
		alpha = min(alpha+0.02, 1);
		draw_set_alpha(alpha);
		DrawSetText(c_white,fSign,fa_center,fa_top);
		draw_text(x,y+300,"Until a local miner from the town of Mirefield found The Ring of Life and Death.");
		draw_set_alpha(1);
	}
	if (timer > 1850)
	{
		alpha2 = min(alpha2+0.02, 1);
		draw_set_alpha(alpha2);
		DrawSetText(c_white,fSign,fa_center,fa_top);
		draw_text(x,y+330,"He let the power go right to his head, and declared himself king of Lordran.");
		draw_set_alpha(1);
	}
	if (timer > 2000)
	{
		alpha3 = min(alpha3+0.02, 1);
		draw_set_alpha(alpha3);
		DrawSetText(c_white,fSign,fa_center,fa_top);
		draw_text(x,y+360,"He started calling himself Lorian, and would let nothing stop him from becoming the ruler of the world.\nBy the force of the ring, he made dead men rise from their graves and join his army.");
		draw_set_alpha(1);
	}
	if (timer > 2300)
	{
		alpha4 = min(alpha4+0.02, 1);
		draw_set_alpha(alpha4);
		DrawSetText(c_white,fSign,fa_center,fa_top);
		draw_text(x,y+420,"Undead, they call them. People who are neither dead nor alive,\njust corpses following orders from whoever holds the ring.");
		draw_set_alpha(1);
	}

	if (timer > 2800)
	{
		alpha -= 0.04;
		alpha2 -= 0.04;
		alpha3 -= 0.04;
		alpha4 -= 0.04;
	}
}
if (timer < 3800)
{
	if (timer > 2850)
	{
		alpha = min(alpha+0.02, 1);
		draw_set_alpha(alpha);
		DrawSetText(c_white,fSign,fa_center,fa_top);
		draw_text(x,y,"Lorian's kingdom grew larger by every day, and the world of Lordran didn't stand a chance.");
		draw_set_alpha(1);
	}
	if (timer > 3000)
	{
		alpha2 = min(alpha2+0.02, 1);
		draw_set_alpha(alpha2);
		DrawSetText(c_white,fSign,fa_center,fa_top);
		draw_text(x,y+30,"It wasn't until Henry Stormhill found the Ring of Light, that the world could fight back.");
		draw_set_alpha(1);
	}
	if (timer > 3200)
	{
		alpha3 = min(alpha3+0.02, 1);
		draw_set_alpha(alpha3);
		DrawSetText(c_white,fSign,fa_center,fa_top);
		draw_text(x,y+60,"The remaining people that were still alive immediately chose Stormhill as their leader.");
		draw_set_alpha(1);
	}
	if (timer > 3400)
	{
		alpha4 = min(alpha4+0.02, 1);
		draw_set_alpha(alpha4);
		DrawSetText(c_white,fSign,fa_center,fa_top);
		draw_text(x,y+90,"It was a war between the living and the dead. The Rings that once held the world together,\nwere now making it fall apart.");
		draw_set_alpha(1);
	}
	if (timer > 3600)
	{
		alpha -= 0.04;
		alpha2 -= 0.04;
		alpha3 -= 0.04;
		alpha4 -= 0.04;
	}
}
if (timer > 3700)
{
	alpha = min(alpha+0.02, 1);
	draw_set_alpha(alpha);
	DrawSetText(c_white,fSign,fa_center,fa_top);
	draw_text(x,y+300,"The war had continued for years, and the people of Lordran thought it would never end.");
	draw_set_alpha(1);
}
if (timer > 3900)
{
	alpha2 = min(alpha2+0.02, 1);
	draw_set_alpha(alpha2);
	DrawSetText(c_white,fSign,fa_center,fa_top);
	draw_text(x,y+330,"But one day in the Cemetery of Ashes, during one of Lorians revivals of the dead,\nan undead man broke his curse of serving Lorian. The first undead ever to have a will of his own.");
	draw_set_alpha(1);
}
if (timer > 4100)
{
	alpha3 = min(alpha3+0.02, 1);
	draw_set_alpha(alpha3);
	DrawSetText(c_white,fSign,fa_center,fa_top);
	draw_text(x,y+390,"The Reborn One they called him, whom's destiny was to destroy the evil king,\nand bring peace to the world once and for all...");
	draw_set_alpha(1);
}
if (timer > 4600)
{
	alpha -= 0.04;
	alpha2 -= 0.04;
	alpha3 -= 0.04;
	alpha4 -= 0.04;
}
if (timer > 4650)
{
	SlideTransition(TRANS_MODE.GOTO,graveyard);
}
if (keyboard_check_pressed(vk_space))
{
	SlideTransition(TRANS_MODE.GOTO,graveyard);
}