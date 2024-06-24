image_angle = image_angle - 1;

x = oDemonKing.x;
y = oDemonKing.y;

if (place_meeting(x,y,oPlayer)) && (oPlayer.take_damage == 1)
{
	if (image_index > 0) image_index -= 0.1;
}
else 
{
	if (image_index < 1) image_index += 0.1;
}

if x > oPlayer.x 
{
	hitfrom = 1;
}
else if x < oPlayer.x
{
	hitfrom = 2;
}