/// @description Insert description here
// You can write your code in this editor
vsp = vsp + grv;

if (place_meeting(x,y+1,oWall))
{
	if (!point_in_circle(oPlayer.x,oPlayer.y,x,y,400)) or (oPlayer.state == PLAYERSTATE.DEAD)
	{
		if (sprite_index = sHellhound) 
		{
			if (animation_end()) 
			{
				image_index = 0;
				sprite_index = sHellhoundWalk;
				hsp = -(image_xscale/3) * 6;
			}
		}
		else if (sprite_index = sHellhoundWalk) 
		{
			if (animation_end()) 
			{
				timer++;
				if (timer == 3)
				{
					image_index = 0;
					sprite_index = sHellhound;
					hsp = 0;
					timer = 0;
				}
			}
		}
		else if (sprite_index = sHellhoundRun) 
		{
			if (animation_end()) 
			{
				image_index = 0;
				sprite_index = sHellhoundWalk;
				hsp = -(image_xscale/3) * 6;
			}
		}
		
	}
	else if (point_in_circle(oPlayer.x,oPlayer.y,x,y,400)) && (oPlayer.state != PLAYERSTATE.DEAD)
	{
		if (animation_end()) 
		{
			sprite_index = sHellhoundRun;
			hsp = -(image_xscale/3) * 18;
		}
		if (point_in_circle(oPlayer.x,oPlayer.y,x,y,200))
		{
			if (other.image_index > 2) and (other.image_index < 4) and (oPlayer.take_damage == 0) attack = 1;
			if (oPlayer.take_damage == 1) attack = 0;
			if (other.image_index >= 6) attack = 0;
		}
	}
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

if (hsp != 0) image_xscale = sign(-hsp);

