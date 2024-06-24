draw_sprite_stretched(sHealthBar,0,healthbar_x,healthbar_y,(hp/hp_max) * healthbar_width,healthbar_height);
draw_sprite(sHealthBar_border,0,healthbar_x,healthbar_y);

draw_set_font(fStats);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_text(gold_x,83,string(global.gold));
//draw_text(300,300,global.checkpoint);
draw_sprite(sGoldIcon,0,100,82);