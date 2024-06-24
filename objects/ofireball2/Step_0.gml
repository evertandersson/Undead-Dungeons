speed = fireSpeed;
direction = other.image_angle;

if x > oPlayer.x 
{
	hitfrom = 1;
}
else if x < oPlayer.x
{
	hitfrom = 2;
}

if (place_meeting(x,y,oWall))
{
	instance_create_layer(x,y,"Instances_1",oExplosion);
	instance_destroy();
}

if (room == Room1)
{
	if (place_meeting(x,y,oGate)) instance_destroy();
	if (oGolem.boss_start == 0) instance_destroy();
}
if (room == Room4)
{
	if (place_meeting(x,y,oGhostGate)) instance_destroy();
	if (oDemonKing.demonking_activate == 0) instance_destroy();
}