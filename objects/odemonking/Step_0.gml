/// @description Insert description here
// You can write your code in this editor
switch (state)
{
	case DEMONSTATE.SLEEP: DemonStateSleep(); break;
	case DEMONSTATE.IDLE: DemonStateIdle(); break;
	case DEMONSTATE.ATTACK: DemonStateAttack(); break;
	case DEMONSTATE.DEAD: DemonStateDead(); break;
}

if (hp < 35) && (demonking_activate != 2)
{
	timer3++;
	if (timer3 > 100)
	{
		instance_create_layer(11775, oCamera.y-400, "Instances_2", oFireball);
		instance_create_layer(12094, oCamera.y+400, "Instances_2", oFireball);
		instance_create_layer(12415, oCamera.y-400, "Instances_2", oFireball);
		instance_create_layer(12735, oCamera.y+400, "Instances_2", oFireball);
		timer3 = 0;
	}
}


if (hp <= 0) 
{
	if (state != DEMONSTATE.DEAD) 
	{
		if (state != DEMONSTATE.DEAD) instance_create_layer(oCamera.x,oCamera.y-200,"GUI",oBossDefeated);
		state = DEMONSTATE.DEAD; 
	}
}