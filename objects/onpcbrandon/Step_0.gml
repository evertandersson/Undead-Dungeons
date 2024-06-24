image_speed = 0.3;
draw_text(x,y,text_order);

x = x + hsp;
vsp = vsp + grv;

if (keyboard_check_pressed(vk_right)) choice = 0;
else if (keyboard_check_pressed(vk_left)) choice = 1;

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
if (room == Room2) && (sprite_index = sNPCBrandon)
{
	if (text_order == 0) text = "Greetings, young traveler!";
	if (text_order == 1) text = "It is my pleasure to introduce you to the village of Calmwaters.";
	if (text_order == 2) text = "I'm Brandon the Tall, the village elder."
	if (text_order == 3) text = "Huh, you look a bit rough.\nRecently been fighting, eh?"
	if (text_order == 4) text = "*Sees the skull of the Undead Golem*"
	if (text_order == 5) text = "Oh, I know who you are... I guess you met\nmy brother William on your way here."
	if (text_order == 6) text = "Never would I have thought that you alone\ncould kill of the Undead Golem, despite being reborn."
	if (text_order == 7) text = "Perhaps there might be hope for Lordran afterall."
	if (text_order == 8) text = "Come on inside the local tavern.\nI'll get you some ale and food, and we'll discuss\nwhat to do with your outstanding fighting skills.\nSee you there."
	if (text_order == 10) 
	{
		hsp = 3;
		sprite_index = sNPCBrandonR;
	}
	
	if (global.get_letter == true) instance_destroy();
}
if (room = rTavern) && (sprite_index = sNPCBrandon)
{
	if (text_order == 10) 
	{
		hsp = 3;
		sprite_index = sNPCBrandonR;

	}
	if (text_order == 11) text = "Two ales and as much chicken as possible, please."
	if (text_order == 12) text = "Go ahead and have a seat, this could take a while."
	if (text_order == 14) 
	{
		hsp = -3;
		sprite_index = sNPCBrandonR;
		image_xscale = -1;
	}
	if (text_order == 15) text = "Here you go, my friend, you must be starving." 
	if (text_order == 16) text = "As you may know, the false king Lorian's\nrealm is growing larger every day."
	if (text_order == 17) text = "Once he gets a hold of all the four rings, we are as good as screwed,\nand darkness will rule the world until the end of time."
	if (text_order == 18) text = "Who knows when the two other rings will show up.\nThe only thing keeping us alive is king Stormhill's Ring of Light."
	if (text_order == 19) text = "Perhaps you, my friend, can put a stop to Lorian's reign and defeat\nhim once and for all. You'd have the whole land of Summerfall's gratitude,\nand you'd be rewarded greatly by his grace. What do you say, my friend?"
	if (text_order == 20)
	{
		if (keyboard_check_pressed(vk_down)) && (oText.text_current == "Perhaps you, my friend, can put a stop to Lorian's reign and defeat\nhim once and for all. You'd have the whole land of Summerfall's gratitude,\nand you'd be rewarded greatly by his grace. What do you say, my friend?")
		{
			text_order = 21;
		}
	}	
	if (choice == 1)
	{
		if (text_order == 21) text = "Great! But beware, the Golem isn't the only vile creature\nserving king Lorian, you will stumble upon a lot more\non your way to the Undead Burg."
		if (text_order == 22) text = "Summerfall is already crawling with his undead troops, and\nonce you set foot in Lorian's territories there will\nbe even more."
		if (text_order == 23) text = "You'll gain all the support you need from our villagers to\nprepare you for your journey. Go seek the grand\nwizard Othar living a few miles north of town."
		if (text_order == 24) 
		{
			global.get_letter = true;
			text = "He'll increase your powers even more. Show them this letter,\nand they shall help you."
		}
		if (text_order == 25) text = "So long, young traveler."
		if (text_order == 26) text = "..."
	}
	if (choice == 0)
	{
		if (text_order == 21) text = "Well... come back when you change your mind."
		if (text_order == 22) text = "Bitch."
		if (text_order == 23) text = "..."
	}
}

if (x >= 5390) instance_destroy(oNPCBrandon);
if (room == rTavern)
{
	if (x >= 1530)
	{
		if (text_order < 11) text_order = 11;
		if (text_order < 14)
		{
			sprite_index = sNPCBrandon;
			y = 544;
			hsp = 0;
		}
	}
	if (image_xscale == -1) && (sprite_index = sNPCBrandonR)
	{
		if (x <= 480)
		{
			text_order = 15;
			hsp = 0;
			y = 544;
			sprite_index = sNPCBrandon;
		}
	}
}