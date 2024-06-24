/// @description Insert description here
// You can write your code in this editor

if (oBringerOfDeath.bringerofdeath_activate == 1)
{
	timer++;
	if (x > 1622) bullettimer++;
	y = y + sin(timer * 0.05) * 1.5;
	visible = true;
	x = x + hsp;
	image_xscale = sign(hsp);
	if (x > 1900)
	{
		if (place_meeting(x+hsp,y,oWall)) hsp = -hsp;
	}
	if (place_meeting(x+hsp,y,oGate)) hsp = -hsp;
	
	if (bullettimer = 150) 
	{
		instance_create_layer(x,y+50,"Instances_1",oReaperProjectile);
		bullettimer = 0;
	}
}
if (oBringerOfDeath.bringerofdeath_activate == 2)
{
	if (sprite_index != sReaperBossDeath) instance_create_layer(oCamera.x,oCamera.y-200,"GUI",oBossDefeated);
	sprite_index = sReaperBossDeath;
	if (image_index > image_number - 1)
	{
		instance_destroy();
	}
}