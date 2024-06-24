if (oLever.elevator_up == 1)
{
	if place_meeting(x,y-1,oPlayer)
	{
		oPlayer.vsp_carry = vsp;
		oLever.vsp_carry = vsp;
	}

	y = y + vsp;
}

if (room == Room5) && (oLever.y <= 532)
{
	oLever.elevator_up = 0;
	//oPlayer.state = PLAYERSTATE.FREE;
	y = 576;
}