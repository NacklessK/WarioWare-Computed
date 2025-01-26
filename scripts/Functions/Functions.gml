// Save and load

function save_game(){
	
	var save_data = {
		demo_highscores: global.highscores,
		index_highscores: global.index_highscores,
		fullscreen: global.fullscreen,
		vsync: global.vsync,
		unlocked_mio: global.unlocked_mio
	};
	
	var save_string = json_stringify(save_data);
	var save_file = file_text_open_write("save_data.sav");
	
	file_text_write_string(save_file, save_string);
	
	file_text_close(save_file);
};

function load_game(){
	if (file_exists("save_data.sav")){
		var save_file = file_text_open_read("save_data.sav");
		
		var save_data = json_parse(file_text_read_string(save_file));
		
		global.highscores = save_data.demo_highscores;
		global.index_highscores = save_data.index_highscores;
		global.fullscreen = save_data.fullscreen;
		global.vsync = save_data.vsync;
		global.unlocked_mio = save_data.unlocked_mio;
		
		file_text_close(save_file);
		
			
		window_set_fullscreen(global.fullscreen);
		display_reset(0, global.vsync);
		
	};
	
};

// Microgame fucntions

function mio(_in, _name, _command, _controls, _time_limit, _lvl1, _lvl2=_lvl1, _lvl3=_lvl1){
	microgame = {
		in: _in,
		name: _name,
		command: _command,
		controls: _controls,
		time_limit: _time_limit,
		lvl1: _lvl1,
		lvl2: _lvl2,
		lvl3: _lvl3,
	};
	
	return microgame;
};

function bos(_in, _name, _command, _controls, _lvl1, _lvl2=_lvl1, _lvl3=_lvl1){
	boss = {
		in: _in,
		name: _name,
		command: _command,
		controls: _controls,
		lvl1: _lvl1,
		lvl2: _lvl2,
		lvl3: _lvl3,
	};
	
	return boss;
};
	
function pick_mio(_index=undefined){
	
	if is_undefined(_index){
		global.c_mio = global.sh_microgames[global.index];
	}
	
	else {
		if (purpose == "demo") || (global.s_type == "mio"){
			global.c_mio = global.microgames[_index];
		}
		else {
			global.c_mio = global.bosses[_index];
		};
	};
};

function add_score(){
	if !(self.score_added) {
		global.score += 1;
		self.score_added = true;
	}
}
	
function lose_life(){
	if !(self.life_lost) {
		global.life -= 1;
		self.life_lost = true;
	}
}
	
function speed_up(_increment, _silent=false){
	global.game_spd += _increment;
	if !(_silent){
		global.stage_state = "speed up";
		audio_play_sound(snd_speed_up, 10, false)
	};
	sped_up = true;
	next_speed_up += speed_up_interval;
}

function update_audio_speed()
{
	var _audio_list = [global.bgm, global.sfx]
	for (var i = 0; i < array_length(_audio_list); i++){
		for (var j = 0; j < array_length(_audio_list[i]); j++){
			audio_sound_pitch(_audio_list[i][j], global.game_spd);
	}
	}
}

function level_up(_silent=false){
	leveled = true;
	if (global.level < 3) global.level++;
	else{
		global.level = 1;
		speed_up(0.1, is_silent);
	};
	if !(_silent){
		audio_play_sound(snd_speed_up, 10, false);
		global.stage_state = "level up";
		next_speed_up += speed_up_interval;
	};
	boss_procedure = false;
}

function boss_stage(){
	next_boss += boss_interval;
	var current_spd = global.game_spd;
	global.game_spd = base_spd;
	base_spd = current_spd;
	update_audio_speed();
	
	if (global.b_index + 1 < array_length(global.sh_bosses)) global.b_index += 1;
	else {
		global.b_index = 0;	
		global.bosses = array_shuffle(global.sh_bosses);
	}
	
	global.c_bos = global.bosses[global.b_index];
	game_room = global.c_bos.lvl1;
	audio_play_sound(snd_speed_up, 10, false);
	global.is_boss = true;
}

function save_highscores(){
	if (purpose == "demo"){
		for (var i=0; i < array_length(global.highscores); i++;){
			if (global.score >= global.highscores[i]){
				array_insert(global.highscores, i, global.score);
				break;
			};
		};
		if (array_length(global.highscores) > 3) array_pop(global.highscores);
	}
	
	else {
		for (var i=0; i < array_length(global.index_highscores[global.s_mio]); i++;){
			if (global.score >= global.index_highscores[global.s_mio][i]){
				array_insert(global.index_highscores[global.s_mio], i, global.score);
				break;
			};
		};
		if (array_length(global.index_highscores[global.s_mio]) > 3) array_pop(global.index_highscores[global.s_mio]);
	};
	
	save_game();
};

// Function to interpret W++ code

function load_code(_filepath){
	var f = file_text_open_read(_filepath);
	var lines = [];
	
	for (var i=0; i < 10; ++i){
		var line = file_text_readln(f);
		if (line == global.null_str) break;
		lines[i] = line;
	};
	return lines;
};

function interpret(_code){
	for (var i = 0; i < array_length(_code); ++i;){
		var mains = string_split(_code[i], "§");
		var c_parts = string_split(mains[0], "|");
		var actions = string_split(mains[1], "¤");
		var a_parts = [];
		
		for (var j = 0; j < array_length(actions); ++j;){
			a_parts[j] = string_split(actions[j], "|");
		};
		
		var coded_c = [];
		
		var condition = false;
		var bool_val = false;
		var bools = [];
		
		var conditions = string_split(c_parts[2], "&");
		
		// Get condition
		for (var j = 0; j < array_length(conditions); ++j;){
			if (get_index_string(conditions[j], "\\", true) != undefined) coded_c = string_split(c_parts[2], "\\");
			else coded_c = [conditions[j]];
			
			switch coded_c[0]{
			case "p_hov":
				bools[j] = position_meeting(mouse_x, mouse_y, self)
				break;
			
			case "c_key":
				bools[j] = keyboard_check(ord(coded_c[1]));
				break;
			
			case "s_click":
				bools[j] = position_meeting(mouse_x, mouse_y, self) && (mouse_check_button_pressed(mb_left));
		};
		
		bool_val = array_sum(bools) == array_length(bools);
		
		};
		
		
		if (self.onces[i]) condition = true;
		
		else {
			switch c_parts[0]{
				
				case "if":
					condition = bool_val;
					break;
			
				case "once":
					if (bool_val) self.onces[i] = true;
					condition = self.onces[i];
					break;
					
				};
			};
		
		// Not operator
		if (c_parts[1] == "!"){
			condition = !condition;
		};
		
		// Get function
		
		for (var j = 0; j < array_length(a_parts); ++j;){
			var c_action = a_parts[j];
		    switch c_action[0]{
				
				case "mov":
					if (condition) advance(c_action[1], c_action[2]);
					break;
				
				case "turn":
					if (condition) image_angle += c_action[1];
					break;
				
				case "slide":
					if (c_action[1] == "") c_action[1] = x;
					if (c_action[2] == "") c_action[2] = y;
					if (condition) || (self.sliding) slide(c_action[1], c_action[2], c_action[3]);
					break;
			
				case "audio":
					if (condition) play_imported_audio(c_action[1], j);
					break
				
			};
		};
	};
};

// Function used for microgames

function array_sum(_array){
	var sum = 0;
	for (var i = 0; i < array_length(_array); ++i;){
		sum += _array[i];
	};
	return sum;
};

function number_check(_val){
	return (keyboard_check(96 + _val)) || (keyboard_check(ord(string(_val))));
}

function get_index_string(_str, _char, _nothrow=false){
	var index = undefined;
	for (var i = 0; i < string_length(_str); i++;){
		if (string_char_at(_str, i+1) == _char){
			index = i;
		}
	}
	if (index == undefined) && !(_nothrow){
		throw($"No character such as \"{_char}\" in \"{_str}\"")
	}
	
	return index;
}

function fade_out(_room, _sec=1){
	instance_create_depth(0, 0, 0, obj_fade_out, {sec: _sec, _room: _room});
};

function rand_sign(){
	if round(random_range(0, 1)){
		return 1;
	}
	else return -1;
};