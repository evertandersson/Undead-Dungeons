vsp = 0;
grv = 0.3;
walksp = 3;
hsp = walksp;

if (room = graveyard) 
{
	enemy_type = 1;
}
if (room = Room3) 
{
	enemy_type = 2;
}

if (enemy_type == 1) hp_max = 8;
if (enemy_type == 2) hp_max = 2;
if (enemy_type == 3) hp_max = 6;
hp = hp_max;
flash = 0; 
hitfrom = 0;
take_damage = 0;