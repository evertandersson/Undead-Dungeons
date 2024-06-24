/// @description Insert description here
// You can write your code in this editor
if (oDemonKing.demonking_activate == 0)
{
	timer = 0;
	if (group == 1) y = 704;
	if (group == 2) y = 192;
}

if (oDemonKing.demonking_activate == 1)
{
	timer += 0.5;
	if (timer > 100) && (timer < 200)
	{
		if (group == 2)
		{
			if (y > 64) y -= 4;
		}
	}
	if (timer > 200)
	{
		if (group == 2)
		{
			if (y < 192) y += 4;
		}
	}
	if (timer > 300) && (timer < 400)
	{
		if (group == 1)
		{
			if (y < 832) y += 4;
		}
	}
	if (timer > 400)
	{
		if (group == 1)
		{
			if (y > 704) y -= 4;
		}
	}
	if (timer > 500) timer = 100;
}

if (oDemonKing.demonking_activate == 2)
{
	if (group == 2)
	{
		if (y < 192) y += 4;
	}
	if (group == 1)
	{
		if (y > 704) y -= 4;
	}	
	
}
