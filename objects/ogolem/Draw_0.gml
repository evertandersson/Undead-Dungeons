draw_self();

if (flash > 0) && (hp > 0)
{
	flash--;
	shader_set(shWhite);
	draw_self();
	shader_reset();
}