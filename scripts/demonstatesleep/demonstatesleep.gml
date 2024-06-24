// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DemonStateSleep()
{
	timer = 0;
	timer2 = 0;
	if (oPlayer.x > 11830) demonking_activate = 1;

	if (demonking_activate == 0) 
	{
		hsp = 0;
		image_xscale = -1;
		x = 12568;
		y = 416;
	}
	
	if (demonking_activate == 1) state = DEMONSTATE.IDLE;
}