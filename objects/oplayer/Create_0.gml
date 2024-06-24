window_set_fullscreen(true);

//Physics
hsp = 0;
hsp_carry = 0;
vsp = 0;
vsp_carry = 0;
grv = 0.3;
walksp = 4;
gravity_change = 1;

//HP
hp = 100;
hp_max = hp;
take_damage = 0;
global.attackpower = 3;

//Health Bar
healthbar_width = 270;
healthbar_height = 20;
healthbar_x = 100;
healthbar_y = 50;

//Power Ups
doubleJump = 0;
jumpInAir = 0;

flash = 0;

state = PLAYERSTATE.FREE;
hitByAttack = ds_list_create();


enum PLAYERSTATE 
{
	FREE,
	ATTACK_SLASH,
	ROLL,
	NOTMOVE,
	DEAD
}