// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DemonStateAttack()
{
	attacktimer++;
	
	vsp = 0;
	hsp = 0;
	
	if (attacktimer > 20)
	{
		repeat(4)
		{
			instance_create_layer(x,y,"Instances_2",oFireball2)
		}
		oFireball2.fireSpeed = 5;
		newdirection += 20;
		attackamount += 1;
		attacktimer = 0;
	}
	
	if (attackamount == 4) 
	{
		timer2 = 0;
		if (image_xscale = 1) hsp = 5;
		if (image_xscale = -1) hsp = -5;
		state = DEMONSTATE.IDLE;
	}
}