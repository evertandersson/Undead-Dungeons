/// @description Insert description here
// You can write your code in this editor
demonking_activate = 0;
timer = 0;
timer2 = 0;
timer3 = 0;
attacktimer = 0;
attackamount = 0
action = 350;

hitfrom = 0;

healthbar_width = 850;
healthbar_height = 40;
healthbar_x = 250;
healthbar_y = 720;


hp_max = 60;
hp = hp_max;

flash = 0;

hsp = 0;
vsp = 0;

newdirection = 0;

state = DEMONSTATE.SLEEP;

enum DEMONSTATE 
{
	SLEEP,
	IDLE,
	ATTACK,
	DEAD
}