/// @description Insert description here
// You can write your code in this editor
bringerofdeath_activate = 0;

x = 2592;
y = 3520;

healthbar_width = 850;
healthbar_height = 40;
healthbar_x = 250;
healthbar_y = 700;

hp_max = 60;
hp = hp_max;

bringer_hsp = 0;
bringer_vsp = 0;
grv = 0.3;
grounded = 0;

flash = 0;

state = BRINGERSTATE.SLEEP;

enum BRINGERSTATE 
{
	SLEEP,
	IDLE,
	ATTACK,
	DEAD
}