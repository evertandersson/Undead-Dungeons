/// @description Insert description here
// You can write your code in this editor

image_speed = 0.4;
draw_text(x,y,text_order);

x = x + hsp;
vsp = vsp + grv;

//Vertical Collision
if (place_meeting(x,y+vsp,oWall)) 
{
	while (!place_meeting(x,y+sign(vsp),oWall)) 
	{
		y = y + sign(vsp);
	}	
	vsp = 0;
}
y = y + vsp;

//Dialogue
if (room == graveyard) && (sprite_index = sNPCWilliam)
{
	if (text_order == 0) text = "I've been expecting your arrival, Reborn One.";
	if (text_order == 1) text = "As you may know, it wasn't a coincidence that you,\nspecifically, broke Lorian's curse.";
	if (text_order == 2) text = "No, it was the tear of Freyja that broke it."
	if (text_order == 3) text = "The spirits of the Gods are stronger than one might believe."
	if (text_order == 4) text = "When the goddess weeped over your grave,\nshe made your destiny be to end the war."
	if (text_order == 5) text = "And I have come to help you make that happen.\nCome on now, we are deep in Lorian's territories."
	if (text_order == 6) text = "Let me take you to Summerfall, which king Henry controls.\nYou'll be safer there."
	if (text_order == 8) 
	{
		hsp = 4;
		image_xscale = 1;
	}
}
if (room == Room1)
{
	if (text_order == 0) text = "We'll be making a stop here at Lothric's Castle along our way.";
	if (text_order == 1) text = "You see, Lothric is the eldest son of Lorian, and\nwas granted this castle a couple of years back.";
	if (text_order == 2) text = "Despite it being Lothric's, he let the Undead Golem\nbe in charge of it while he is out in battle.";
	if (text_order == 3) text = "Your job is to kill the golem, and then take\nits skull to my brother Brandon, the village elder of Calmwaters.";
	if (text_order == 4) text = "The golem has been making life difficult for\nthe people of Calmwaters for a very long time."
	if (text_order == 5) text = "Do this, and you shall have their gratitude\nand all the help you need to stop king Lorian."
	if (text_order == 6) text = "Begone now! Send Brandon my regards."
	if (text_order == 7) text = "..."
}

//Jumps
if (x > 4960) && (x < 4970) vsp = -8;
if (x > 5420) && (x < 5430) vsp = -8;


//Animation
if (place_meeting(x,y+1,oWall))
{
	if (hsp > 0) or (hsp < 0) sprite_index = sNPCWilliamR;
	else sprite_index = sNPCWilliam;
}
else
{
	if (vsp < 0) sprite_index = sNPCWilliamJ;
	else if (vsp > 0) sprite_index = sNPCWilliamF;
}