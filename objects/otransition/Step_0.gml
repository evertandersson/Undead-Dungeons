if (mode != TRANS_MODE.OFF)
{
	if (mode == TRANS_MODE.INTRO)
	{
		percent = max(0,percent - max((percent/10),0.005));
	}
	else
	{
		percent = min(1,percent + max(((1 - percent)/10),0.005));
	}
	
	if (percent == 1) && (room != Menu) && (room != cutscene)
	{
		if (room == graveyard)
		{
			camera_set_view_size(oCamera.cam,1366,768);
			oPlayer.x = 192;
			oPlayer.y = 608;
			oPlayer.sprite_index = sPlayer;
			oPlayer.state = PLAYERSTATE.FREE;
			oYouDied.image_alpha = 0;
			oCamera.x = oPlayer.x;
			oCamera.y = oPlayer.y;
		}
		if (room == Room1) && (global.checkpoint = 0)
		{
			audio_stop_sound(snd_Intro);
			oPlayer.x = 224;
			oPlayer.y = 576;
			oPlayer.sprite_index = sPlayer;
			oPlayer.state = PLAYERSTATE.FREE;
			oYouDied.image_alpha = 0;
			oCamera.x = oPlayer.x;
			oCamera.y = oPlayer.y;
		}
		if (room == Room1) && (global.checkpoint = 1)
		{
			oPlayer.x = 2976;
			oPlayer.y = 2464;
			oPlayer.sprite_index = sPlayer;
			oPlayer.state = PLAYERSTATE.FREE;
			oYouDied.image_alpha = 0;
			oCamera.x = oPlayer.x;
			oCamera.y = oPlayer.y;
		}	
		if (room == Room1) && (global.checkpoint = 2)
		{
			oPlayer.x = 4832;
			oPlayer.y = 1792;
			oPlayer.sprite_index = sPlayer;
			oPlayer.state = PLAYERSTATE.FREE;
			oGolem.boss_start = 0;
			oYouDied.image_alpha = 0;
			oCamera.x = oPlayer.x;
			oCamera.y = oPlayer.y;
		}	
		if (room == Room2) && (global.checkpoint != 4)
		{
			oPlayer.y = 512;
			global.checkpoint = 3;
			audio_stop_all();
		}
		if (room == Room2) && (global.checkpoint = 4)
		{
			audio_stop_sound(snd_SummerFallTheme);
			oPlayer.x = 864;
			oPlayer.y = 640;
			oPlayer.sprite_index = sPlayer;
			oPlayer.state = PLAYERSTATE.FREE;
			oYouDied.image_alpha = 0;
			oCamera.x = oPlayer.x;
			oCamera.y = oPlayer.y;
		}	
		if (room == Room2) && (global.checkpoint = 5)
		{
			audio_stop_sound(snd_TavernSong);
			oPlayer.x = 5440;
			oPlayer.y = 640;
			oPlayer.sprite_index = sPlayer;
			oPlayer.state = PLAYERSTATE.FREE;
			oYouDied.image_alpha = 0;
			oCamera.x = oPlayer.x;
			oCamera.y = oPlayer.y;
		}	
		if (global.checkpoint = 6)
		{
			global.reaper = 0;
			audio_stop_sound(snd_ReaperTheme);
			instance_destroy(oReaper);
			instance_destroy(oLever);
			instance_destroy(oEnemy);
			oPlayer.x = 192;
			oPlayer.y = 704;
			oPlayer.sprite_index = sPlayer;
			oPlayer.state = PLAYERSTATE.FREE;
			oYouDied.image_alpha = 0;
			oCamera.x = oPlayer.x;
			oCamera.y = oPlayer.y;
			instance_create_layer(64,1792,"Enemies",oReaper);
			instance_create_layer(2367,1382,"Enemies",oEnemy);
			instance_create_layer(2880,1382,"Enemies",oEnemy);
			instance_create_layer(5952,2560,"Instances_1",oEnemy);
			instance_create_layer(5440,2560,"Instances_1",oEnemy);
			instance_create_layer(3360,2432,"Instances_1",oEnemy);
			instance_create_layer(2368,2528,"Instances_1",oEnemy);
			instance_create_layer(448,1492,"Instances_1",oLever);
			instance_create_layer(2080,1280,"Enemies",oDoor);
			oLever.image_index = 0;
		}
		if (global.checkpoint = 7)
		{
			global.reaper = 0;
			instance_destroy(oEnemy);
			instance_create_layer(5952,2560,"Instances_1",oEnemy);
			instance_create_layer(5440,2560,"Instances_1",oEnemy);
			instance_create_layer(3360,2432,"Instances_1",oEnemy);
			instance_create_layer(2368,2528,"Instances_1",oEnemy);
			oPlayer.x = 6752;
			oPlayer.y = 2560;
			oPlayer.sprite_index = sPlayer;
			oPlayer.state = PLAYERSTATE.FREE;
			oYouDied.image_alpha = 0;
			oCamera.x = oPlayer.x;
			oCamera.y = oPlayer.y;
		}
		if (global.checkpoint = 8)
		{
			instance_destroy(oReaperBoss);
			instance_create_layer(800,3008,"Instances_1",oReaperBoss);
			oBringerOfDeath.bringerofdeath_activate = 0;
			oPlayer.x = 800;
			oPlayer.y = 3200;
			oPlayer.sprite_index = sPlayer;
			oPlayer.state = PLAYERSTATE.FREE;
			oYouDied.image_alpha = 0;
			oCamera.x = oPlayer.x;
			oCamera.y = oPlayer.y;
			instance_destroy(oBringerOfDeath);
			instance_create_layer(2592,3520,"Instances_1",oBringerOfDeath);
		}
		if (global.checkpoint = 9)
		{
			audio_stop_sound(snd_ReaperTheme);
			audio_stop_sound(snd_FirstDungeonTheme);
			instance_destroy(oHellbeastFire);
			oPlayer.x = 160;
			oPlayer.y = 512;
			oPlayer.sprite_index = sPlayer;
			oPlayer.state = PLAYERSTATE.FREE;
			oYouDied.image_alpha = 0;
			if (oFocus > 2000)
			{
				oCamera.x = 4192;
				oCamera.y = 416;
			}
			else 
			{
				oCamera.x = oPlayer.x;
				oCamera.y = oPlayer.y;
			}
		}
		if (global.checkpoint = 10)
		{
			instance_destroy(oHellbeastFire);
			instance_destroy(oHellbeast);
			oDemonKing.demonking_activate = 0;				
			oDemonKing.hp = oDemonKing.hp_max;
			oPlayer.gravity_change = 1;
			oPlayer.x = 6848;
			oPlayer.y = 460;
			oPlayer.image_yscale = 1;
			oPlayer.sprite_index = sPlayer;
			oPlayer.state = PLAYERSTATE.FREE;
			oYouDied.image_alpha = 0;
			if (oFocus > 2000)
			{
				oCamera.x = 4192;
				oCamera.y = 416;
			}
			else 
			{
				oCamera.x = oPlayer.x;
				oCamera.y = oPlayer.y;
			}
		}
		if (global.checkpoint = 11)
		{
			instance_destroy(oHellbeastFire);
			instance_destroy(oHellbeast);
			instance_destroy(oFireball);
			global.switchgravity = 1;
			if (oDemonKing.demonking_activate != 2)
			{
				oDemonKing.demonking_activate = 0;				
				oDemonKing.hp = oDemonKing.hp_max;
			}
			oPlayer.gravity_change = 1;
			oPlayer.x = 11450;
			oPlayer.y = 460;
			oPlayer.image_yscale = 1;
			oPlayer.sprite_index = sPlayer;
			oPlayer.state = PLAYERSTATE.FREE;
			oYouDied.image_alpha = 0;
			if (oFocus > 2000)
			{
				oCamera.x = 4192;
				oCamera.y = 416;
			}
			else 
			{
				oCamera.x = oPlayer.x;
				oCamera.y = oPlayer.y;
			}
		}
		if (global.checkpoint == 13)
		{
			oDragon.dragon_activate = 1;
			oDragon.hsp = 2;
			camera_set_view_size(oCamera.cam,1920,1080);
		}
		if (global.checkpoint == 14)
		{
			camera_set_view_size(oCamera.cam,1366,768);
		}
		if (global.checkpoint == 15)
		{
			global.switchgravity = 1;
			oPlayer.gravity_change = 1;
			oPlayer.x = 4550;
			oPlayer.y = 1250;
			oPlayer.image_yscale = 1;
			oPlayer.sprite_index = sPlayer;
			oPlayer.state = PLAYERSTATE.FREE;
			oYouDied.image_alpha = 0;
		}
		oPlayer.walksp = 4;
		oPlayer.hp = oPlayer.hp_max;
	}
	if (percent == 1) || (percent == 0)
	{
		switch (mode) 
		{
			case TRANS_MODE.INTRO:
			{
				mode = TRANS_MODE.OFF;
				break;
			}
			case TRANS_MODE.NEXT:
			{
				mode = TRANS_MODE.INTRO;
				room_goto_next();
				break;
			}
			case TRANS_MODE.GOTO:
			{
				mode = TRANS_MODE.INTRO;
				room_goto(target);
				break;
			}
			case TRANS_MODE.DEAD:
			{
				mode = TRANS_MODE.INTRO;
				room_goto(target);
				break;
			}
			
			case TRANS_MODE.RESTART:
			{
				mode = TRANS_MODE.INTRO;			
				break;
			}
		}
	}
}

