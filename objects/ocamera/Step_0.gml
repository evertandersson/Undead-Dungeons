if (room = graveyard) follow = oPlayer;

if (room = Room1)
{
	if (oGolem.boss_start == 0) follow = oPlayer;
	if (oGolem.boss_start == 1) follow = oFocus;
	if (oGolem.boss_start == 2) follow = oPlayer;
	if (oGolem.boss_start == 3) follow = oFocus;
	if (oFocus.bridge_activate == 2) follow = oPlayer;
}

if (room = Room3)
{
	if (oBringerOfDeath.bringerofdeath_activate = 0) follow = oPlayer;
	if (oBringerOfDeath.bringerofdeath_activate = 1) follow = oFocus;
	if (oBringerOfDeath.bringerofdeath_activate = 2) follow = oPlayer;
}
if (room = Room4)
{
	follow = oFocus;
}
if (room = Room5)
{
	if (oDragon.dragon_activate == 0) follow = oPlayer;
	if (oDragon.dragon_activate == 1)
	{
		follow = oFocus;
	}
}
if (room = Room6)
{
	follow = oPlayer;
}

//Update destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

//Update object position
x += (xTo - x) / 25;
y += (yTo - y) / 25;

x = clamp(x,view_w_half+buff,room_width-view_w_half-buff);
y = clamp(y,view_h_half+buff,room_height-view_h_half-buff);

//Screen Shake
x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));

//Update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);

if (layer_exists("GhostTown"))
{
	layer_x("Buildings",x/32);
	layer_x("GhostTown",x/16);
	layer_x("Background",x/8);
}

if (layer_exists("Gravestones"))
{
	layer_x("Gravestones",x/8);
	layer_x("Mountains",x/2);
	layer_x("Moon",x-768);
}
if (layer_exists("City"))
{
	layer_x("City",x/16);
	layer_x("Clouds",x/8);
}