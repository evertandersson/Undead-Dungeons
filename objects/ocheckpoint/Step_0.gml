if (place_meeting(x,y,oPlayer)) && (global.checkpoint = 0) && (room == Room1)
{
	instance_create_layer(oCamera.x,oCamera.y,"GUI",oBonfireLit);
	global.checkpoint = 1;
}

if (place_meeting(x,y,oPlayer)) && (global.checkpoint = 3) && (room == Room2)
{
	instance_create_layer(oCamera.x,oCamera.y,"GUI",oBonfireLit);
	global.checkpoint = 4;
}

if (place_meeting(x,y,oPlayer)) && (global.checkpoint = 6) && (room == Room3)
{
	instance_create_layer(oCamera.x,oCamera.y,"GUI",oBonfireLit);
	global.checkpoint = 7;
}

if (place_meeting(x,y,oPlayer)) && (global.checkpoint = 7) && (room == Room3) && (self.x == 879)
{
	instance_create_layer(oCamera.x,oCamera.y,"GUI",oBonfireLit);
	global.checkpoint = 8;
}

if (place_meeting(x,y,oPlayer)) && (global.checkpoint = 9) && (room == Room4)
{
	instance_create_layer(oCamera.x,oCamera.y,"GUI",oBonfireLit);
	global.checkpoint = 10;
}

if (oPlayer.x > 11400) && (global.checkpoint = 10) && (room == Room4)
{
	global.checkpoint = 11;
}

if (place_meeting(x,y,oPlayer)) && (global.checkpoint = 14) && (room == Room6)
{
	instance_create_layer(oCamera.x,oCamera.y,"GUI",oBonfireLit);
	global.checkpoint = 15;
}