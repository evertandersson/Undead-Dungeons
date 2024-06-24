/// @description Insert description here
// You can write your code in this editor

draw_self();
if (text_order == 20)
{
	draw_set_alpha(0.5);
	draw_set_color(c_black);
	draw_roundrect_ext(x-180,y-40,x+180,y+10,15,15,false);
	draw_set_alpha(1);

	//Draw Text
	DrawSetText(c_white,fSign,fa_center,fa_top);
	if (choice == 1) draw_text(x,y-30,		">ACCEPT<     DECLINE  ");
	else if (choice == 0) draw_text(x,y-30,	"  ACCEPT     >DECLINE<")
}