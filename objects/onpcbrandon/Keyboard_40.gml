if (point_in_circle(oPlayer.x,oPlayer.y,x,y,150)) && (!instance_exists(oText))
{
	if (sprite_index == sNPCBrandon) 
	{
		if (text_order != 20) text_order++;
	}
	
	if (room = Room2)
	{
		if (text_order < 10)
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
	if (room = rTavern)
	{
		if (text_order < 14) or (text_order > 14)
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
}