function PlayerStateDead() 
{
	x = x + hsp_carry;
	y = y + vsp;
	vsp = vsp + grv;
	
	if (place_meeting(x,y+vsp,oWall)) 
	{
		while (!place_meeting(x,y+sign(vsp),oWall)) 
		{
			y = y + sign(vsp);
		}	
		vsp = 0;
	}
	if (place_meeting(x,y+vsp,oElevator)) 
	{
		while (!place_meeting(x,y+sign(vsp),oElevator)) 
		{
			y = y + sign(vsp);
		}	
		vsp = vsp_carry;
	}
	
	if (sprite_index != sPlayerDead)
	{
		image_index = 0;
		sprite_index = sPlayerDead;
	}
	image_speed = 1;
	
	if (image_index > 12) 
	{
		image_speed = 0;
	}
	
	
}