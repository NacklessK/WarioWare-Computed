image_speed = global.game_spd;

if (global.one_up){
	one_up = true;
}
else if !(one_up){

	if (global.stage_state == "next"){
		if !(been_static){
			timer++;
			if (timer < 30) && !(been_static) && (timer != 0){
				timer += global.game_spd;
				sprite_index = spr_display_static;
			}
			else {
				timer = 0;
				been_static = true;
			};
		}
		if (been_static){
			if (obj_stage.purpose == "demo") {
			    sprite_index = spr_display_controls;
				if !(global.is_boss) image_index = global.c_mio.controls;
				else image_index = global.c_bos.controls;
			}
			else {
			    sprite_index = spr_display_lives
				image_index = abs(4 - global.life);
			}
		};
	}

	else if (global.stage_state == "result"){
		sprite_index = spr_display_static;
		been_static = true;
	}

	else if (global.stage_state == "speed up"){
		been_static = false;
		sprite_index = spr_display_speed_up;
	}

	else if (global.stage_state == "boss"){
		been_static = false;
		sprite_index = spr_display_boss;
	}
	
	else if (global.stage_state == "level up"){
		been_static = false;
		sprite_index = spr_display_level_up;
	}
	
	else if (global.stage_state == "game over"){
		if !(audio_is_playing(snd_loss)) sprite_index = spr_display_game_over;
	};
};

if (one_up){
	if (timer < 100){
		sprite_index = spr_display_1up;
		timer += global.game_spd;
	}
	else{
		one_up = false;
		timer = 0;
	};
	
};

if (global.stage_state == "playing"){
	been_static = false;
};