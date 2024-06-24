speed = 5;

direction = other.image_angle;

if x > oPlayer.x 
{
	hitfrom = 1;
}
else if x < oPlayer.x
{
	hitfrom = 2;
}

if (room = Room1) 
{
	if (place_meeting(x,y,oWall)) instance_destroy();
	if (place_meeting(x,y,oGate)) instance_destroy();
	if (oGolem.boss_start == 0) instance_destroy();
}

if (room = Room4) 
{
	if (x == 11775) image_angle = 270;
	if (x == 12094) image_angle = 90;
	if (x == 12415) image_angle = 270;
	if (x == 12735) image_angle = 90;	
	
	if (y < -100) or (y > 1000) instance_destroy();
	
}