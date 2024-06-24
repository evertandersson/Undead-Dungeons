/// @description Insert description here
// You can write your code in this editor

if (visible == true)
{
	draw_set_font(fStats);
	draw_set_color(c_black);
	draw_text(1220,menu_y+300,string(oPlayer.hp_max));
	draw_text(1220,menu_y+340,string(global.attackpower));
	draw_text(1220,menu_y+380,string("0"));
	draw_text(1170,menu_y+470,"Deaths: " + string(global.deathcount));
}