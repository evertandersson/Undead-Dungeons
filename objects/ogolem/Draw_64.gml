if (boss_start == 1)
{
	draw_sprite_stretched(sHealthBar,0,healthbar_x,healthbar_y,(hp/hp_max) * healthbar_width,healthbar_height);
	draw_sprite(sGolemHealthBar_border,0,healthbar_x,healthbar_y);
	DrawSetText(c_white,fBoss,fa_left,fa_top);
	draw_text(healthbar_x+10,healthbar_y-53,"Undead Golem");
}