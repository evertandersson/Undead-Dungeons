/// @description Insert description here
// You can write your code in this editor
if (oCutscene.timer > 2200)
{
	image_alpha += 0.005;
	image_xscale += 0.0001;
	image_yscale += 0.0001;
}

if (image_alpha >= 1)
{
	if (instance_exists(oMine)) instance_destroy(oMine);
}

if (oCutscene.timer > 2450)
{
	image_alpha -= 0.01;
}