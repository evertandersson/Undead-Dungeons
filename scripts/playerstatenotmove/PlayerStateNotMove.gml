// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateNotMove()
{
	y = y + vsp_carry;
	
	sprite_index = sPlayer;
	image_index = 0;
	if (room == Room4)
	{
		if (place_meeting(x,y+vsp,oGhostElevator)) 
		{
			while (!place_meeting(x,y+sign(vsp),oGhostElevator)) 
			{
				y = y + sign(vsp);
			}	
			vsp = vsp_carry;
		}
	}
	
}