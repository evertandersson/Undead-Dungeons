image_angle = image_angle - 0.5;
//y = oDemon.y - 100;

if (place_meeting(x,y,oPlayer)) && (oPlayer.state != PLAYERSTATE.DEAD)
{
	if (image_alpha > 0) 
	{
		image_alpha -= 0.1;
		oPlayer.flash = 3;
		oPlayer.hp -= 2;
		if (oPlayer.hp <= 0)
		{
			oPlayer.state = PLAYERSTATE.DEAD;
		}
	}
}
else 
{
	if (image_alpha < 1) image_alpha += 0.1;
}


if x > oPlayer.x 
{
	hitfrom = 1;
}
else if x < oPlayer.x
{
	hitfrom = 2;
}