// Save and load

function save_game(){
	
	var save_data = {
		demo_highscores: global.highscores
	}
	
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
		
		file_text_close(save_file);
		
	};
	
};

// These two functions are used to easily assign microgames to structs.

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
		
		var conditions = string_split(c_parts[2], "&");
		
		// Get condition
		if (get_index_string(c_parts[2], "\\", true) != undefined) coded_c = string_split(c_parts[2], "\\");
		else coded_c = [c_parts[2]];
		
		switch coded_c[0]{
			case "p_hov":
				bool_val = position_meeting(mouse_x, mouse_y, self)
				break;
			
			case "c_key":
				bool_val = keyboard_check(ord(coded_c[1]));
				break;
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
			if (condition) {
		    switch c_action[0]{
			case "adv":
				advance(c_action[1], c_action[2]);
				break;
				
			case "turn":
				image_angle += c_action[1];
				break;
				
			case "slide":
			if (c_action[1] == "") c_action[1] = x;
			if (c_action[2] == "") c_action[2] = y;
			slide(c_action[1], c_action[2], c_action[3])
			break;
				
				};
			};
		};
	};
};

// Function used for microgames

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
	instance_create_depth(0, 0, 0, obj_fade_out, {sec: _sec});
};

function rand_sign(){
	if round(random_range(0, 1)){
		return 1;
	}
	else return -1;
};