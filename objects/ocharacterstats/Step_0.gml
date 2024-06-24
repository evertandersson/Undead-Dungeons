/// @description Follow camera
// You can write your code in this editor
x = oCamera.x + menu_x;
y = oCamera.y + menu_y;


if (show_menu == false) && (visible == false)
{
	menu_x = 400;
	menu_y = 600;
}
else if (show_menu == true)
{
	visible = true;
	menu_x = 400;
	menu_y += ((menu_y_target - menu_y) / menu_speed); 
}
else if (show_menu == false) && (visible == true)
{
	menu_x = 400;
	menu_y += ((menu_y_target2 - menu_y) / menu_speed); 
	if (menu_y > 590) visible = false;
}