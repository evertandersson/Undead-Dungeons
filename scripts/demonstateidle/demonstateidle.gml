// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DemonStateIdle()
{
	attackamount = 0;
	timer++;
	timer2++;
	if (hsp == 0) hsp = -5;
	y = y + sin(timer * 0.05) * 2;

	if (place_meeting(x+hsp,y,oWall))
	{
		while (!place_meeting(x+sign(hsp),y,oWall))
		{
			x = x + sign(hsp);
		}	
		hsp = -hsp;
	}
	if (place_meeting(x+hsp,y,oGhostGate))
	{
		while (!place_meeting(x+sign(hsp),y,oGhostGate))
		{
			x = x + sign(hsp);
		}	
		hsp = -hsp;
	}
	x = x + hsp;
	image_xscale = sign(hsp);

	if (hp >= 20) action = 250;
	else if (hp < 20) action = 150;
	
	if (timer2 > action) state = DEMONSTATE.ATTACK;
	
	if (oDemonKing.demonking_activate == 0) state = DEMONSTATE.SLEEP;
}