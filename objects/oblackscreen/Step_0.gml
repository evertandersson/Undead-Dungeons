/// @description Insert description here
// You can write your code in this editor
if (oCutscene.timer > 250) && (oCutscene.timer < 1000)
{
	image_alpha -= 0.005;
}

if (oCutscene.timer > 1000)
{
	image_alpha = 1;
}