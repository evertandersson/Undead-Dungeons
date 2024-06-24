image_xscale = 0.5;
image_yscale = 0.5;

if (room = Room1)
{
	fireSpeed = 0;

	image_angle = oGolem.newdirection;

	hitfrom = 0;
	oGolem.newdirection = oGolem.newdirection + 20;
}

if (room == Room4)
{
	fireSpeed = 0;

	image_angle = oDemonKing.newdirection;

	hitfrom = 0;
	oDemonKing.newdirection = oDemonKing.newdirection + 90;
}