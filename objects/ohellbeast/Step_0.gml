/// @description Insert description here
// You can write your code in this editor
timer++;
image_speed = 0.6;
if (timer > 80) && (animation_end())
{
	instance_create_layer(x,y,"Player",oHellbeastFire);
	timer = 0;
}