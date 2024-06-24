boss_start = 0;

boss_hsp = 3;
boss_vsp = 0;
grv = 0.1;
attack_charge = 0;
attack_delay = 0;
attack_times = 0;
newdirection = 0;

healthbar_width = 850;
healthbar_height = 40;
healthbar_x = 250;
healthbar_y = 700;

hp = 50;
hp_max = hp;

flash = 0;
image_speed = 0.3;

state = GOLEMSTATE.SLEEP;

enum GOLEMSTATE 
{
	SLEEP,
	IDLE,
	ATTACK,
	DEAD
}