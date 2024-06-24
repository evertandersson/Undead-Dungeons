vsp = vsp + grv;

if (grounded) and (afraidofheights) and (!place_meeting(x+hsp,y+1,oWall))
{
	hsp = -hsp;
}

if (enemy_type == 1) 
{
	hp_max = 8;
	sprite_index = sEnemy;
	image_speed = 1;
}
if (enemy_type == 2) 
{
	hp_max = 2;
	afraidofheights = true;
	sprite_index = sTreeEnemy;
	image_speed = 0.4;
}
if (enemy_type == 3) 
{
	hp_max = 6;
	afraidofheights = true;
	sprite_index = sTreeEnemy;
	image_speed = 0.4;
}


//Horizontal Collision
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}	
	hsp = -hsp;
}
x = x + hsp;


//Vertical Collision
if (place_meeting(x,y+vsp,oWall)) 
{
	while (!place_meeting(x,y+sign(vsp),oWall)) 
	{
		y = y + sign(vsp);
	}	
	vsp = 0;
	grounded = true;
}
else 
{
	grounded = false;
}
y = y + vsp;

//Chooses direction for player to get hit from
if x > oPlayer.x 
{
	hitfrom = 1;
}
else if x < oPlayer.x
{
	hitfrom = 2;
}

if (room == graveyard) or (room == Room4) or (room == Room6)
{
	if (place_meeting(x,y,oWallDeath))
	{
		audio_play_sound(snd_EnemyHit,0,false);
		flash = 3;
		hp = 0;
	}
}

if (hsp != 0) image_xscale = sign(hsp);