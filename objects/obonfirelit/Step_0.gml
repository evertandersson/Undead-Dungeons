x = oCamera.x;
y = oCamera.y - 200;

if (instance_exists(oBonfireLit))
{
	if (!audio_is_playing(snd_Bonfire)) audio_play_sound(snd_Bonfire,10,false);
	image_xscale += 0.001;
	image_yscale += 0.001;
	if (image_xscale < 1.08) image_alpha += 0.02;
	else image_alpha -= 0.025;
}

if (image_alpha < 0) && (image_xscale > 1.2)
{
	instance_destroy(oBonfireLit);
}