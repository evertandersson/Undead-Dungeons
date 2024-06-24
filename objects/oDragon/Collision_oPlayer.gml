/// @description Insert description here
// You can write your code in this editor


if (point_in_circle(oPlayer.x,oPlayer.y,x,y,300)) && (dragon_activate == 0)
{
	with (oPlayer)
	{
		global.checkpoint = 13;
		SlideTransition(TRANS_MODE.RESTART);
	}
}
