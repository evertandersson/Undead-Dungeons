/// @description Insert description here
// You can write your code in this editor
speed = 4;

direction = other.image_angle;

if x > oPlayer.x 
{
	hitfrom = 1;
}
else if x < oPlayer.x
{
	hitfrom = 2;
}

if (place_meeting(x,y,oPlayer)) && (oPlayer.take_damage = 1) 
{
	instance_create_layer(x,y,"Instances_1",oExplosion);
	instance_destroy();
}
if (place_meeting(x,y,oWall)) 
{
	instance_create_layer(x,y,"Instances_1",oExplosion);
	instance_destroy();
}
if (place_meeting(x,y,oGate)) 
{
	instance_create_layer(x,y,"Instances_1",oExplosion);
	instance_destroy();
}
if (oBringerOfDeath.bringerofdeath_activate == 0) instance_destroy();