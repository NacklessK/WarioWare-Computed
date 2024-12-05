if !(has_reset) reset();

if (global.score == next_boss) global.boss = true;


// Result

if (global.stage_state == "result") {
  if !(result_played){
	  audio_play_sound(jingle, 10, false);
	  result_played = true;
	  if !(global.winning) lose_life();
	  else if (global.one_up) && (global.life < 4){
		  global.life++;
		 
	  }
	  global.one_up = false; 
  }
  
	if !(audio_is_playing(jingle)){
	if (global.score == next_speed_up) && !(sped_up) && !(global.score + 1 == next_boss) && (global.life > 0){
		speed_up(0.1);
	}
	
	// Boss Stage ?
	else if (global.score + 1 == next_boss) && (global.life > 0)
{
	global.stage_state = "boss";
	boss_stage();
}


// Boss beaten

	else if (global.is_boss){
		boss_procedure = true;
		if (global.level < 3) && !(leveled){
			level_up();
			
		}
		else if !(sped_up) && (global.level >= 3) speed_up(0.1);
		global.is_boss = false;
		
		
	}
	
	else if !(boss_procedure){
		if (global.life > 0) {
		    global.stage_state = "next";
		}
		else {
		    global.stage_state = "game over";
			global.game_spd = 1;
			update_audio_speed();
			save_highscores();
				if !(go_played){
					audio_play_sound(snd_game_over, 10, false);
					go_played = true;
				};
		};
	};
	
	}
}

// Next microgame

else if (global.stage_state == "next") && !(audio_is_playing(snd_speed_up)){
	if (has_looped) add_score();
    if !(next_played)
	{
		update_audio_speed();
		audio_play_sound(snd_next, 10, false);
		instance_create_layer(room_width / 2, room_height / 2, "Controls", obj_controls);
		next_played = true;
	}

	if !(audio_is_playing(snd_next))
	{
		room_goto(game_room);
		next_played = false;
		global.stage_state = "playing"
		global.winning = false;
		global.losing = false;
		has_reset = false;
		has_looped = true;
	}
}

else if (global.stage_state == "speed up"){
	if !(audio_is_playing(snd_speed_up)){
		global.stage_state = "next";
	};
}

else if (global.stage_state == "boss"){
	if !(audio_is_playing(snd_speed_up)){
		global.stage_state = "next";
	};
}

else if (global.stage_state == "level up"){
	if !(audio_is_playing(snd_speed_up)){
		global.stage_state = "next";
	};
}

else if (global.stage_state == "game over") {
    if (dark_timer > 3 * game_get_speed(gamespeed_fps)){
		fade_out(rm_game_over, .5);
	}
	else{
	dark_timer++;
	};
};

show_debug_message(boss_procedure);