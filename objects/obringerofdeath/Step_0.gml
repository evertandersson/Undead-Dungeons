/// @description Insert description here
// You can write your code in this editor
switch (state)
{
	case BRINGERSTATE.SLEEP: BringerStateSleep(); break;
	case BRINGERSTATE.IDLE: BringerStateIdle(); break;
	case BRINGERSTATE.ATTACK: BringerStateAttack(); break;
	case BRINGERSTATE.DEAD: BringerStateDead(); break;
}

if x > oPlayer.x 
{
	hitfrom = 1;
}
else if x < oPlayer.x
{
	hitfrom = 2;
}

if (hp <= 0) 
{
	if (state != BRINGERSTATE.DEAD) 
	{
		image_index = 0;
		oReaperBoss.image_index = 0;
		state = BRINGERSTATE.DEAD; 
	}

}