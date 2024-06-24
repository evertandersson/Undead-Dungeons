/// @description Insert description here
// You can write your code in this editor
if (room = Room4)
{
	if (instance_exists(oDemonKing))
	{
		if (oDemonKing.demonking_activate == 2)
		{
			vsp = -3;
			y = y + vsp;
		}
		
		if (oDemonKing.demonking_activate == 1)
		{
			if (place_meeting(x,y+vsp,oWall)) 
			{
				while (!place_meeting(x,y+sign(vsp),oWall)) 
				{
					y = y + sign(vsp);
				}	
				vsp = 0;
			}
			y = y + vsp;
			vsp = vsp + grv;
		}

		if (oDemonKing.demonking_activate == 0)
		{
			y = -380;
		}
	}
}