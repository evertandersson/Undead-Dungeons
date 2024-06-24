speed = 6;
direction = other.image_angle;

if (place_meeting(x,y,oPlayer)) and (oPlayer.take_damage = 1)
{
	instance_create_layer(x,y,"Instances_1",oExplosion);
	instance_destroy();
}
if (x < -100) instance_destroy();

if x > oPlayer.x 
{
	hitfrom = 1;
}
else if x < oPlayer.x
{
	hitfrom = 2;
}

if (place_meeting(x,y,oHellbeastFire))
	{
		take_damage = 1;
		
	}