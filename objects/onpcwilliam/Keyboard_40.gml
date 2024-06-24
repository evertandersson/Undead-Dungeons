/// @description Insert description here
// You can write your code in this editor
if (point_in_circle(oPlayer.x,oPlayer.y,x,y,150)) && (!instance_exists(oText))
{
	if (sprite_index == sNPCWilliam) text_order++;
	if (text_order < 8)
	{
		with (instance_create_layer(x,y-50,layer,oText))
		{
			text = other.text;
			length = string_length(text);
		}
	
		with (oCamera)
		{
			follow = other.id;
		}
	}
}