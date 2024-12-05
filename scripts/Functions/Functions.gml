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
	var lines = []
	
	for (var i=0; i < 10; ++i){
		var line = file_text_readln(f);
		if (line == global.null_str) break;
		lines[i] = line;
	};
	return lines;
};

function interpret(_code){
	for (var i = 0; i < array_length(_code); ++i;){
		var part = string_split(_code[i], "|");
		
		// Find function
		
		switch part[0]{
			
			case "cont":
				continous(real(part[1]), real(part[2]));
		};
	};
};

// Function used for microgames

function number_check(_val){
	return (keyboard_check(96 + _val)) || (keyboard_check(ord(string(_val))));
}

function get_index_string(_str, _char, _nothrow=false){
	var index = "None";
	for (var i = 0; i < string_length(_str); i++;){
		if (string_char_at(_str, i+1) == _char){
			index = i;
		}
	}
	if (index == "None") && !(_nothrow){
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