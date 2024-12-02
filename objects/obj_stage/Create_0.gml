base_spd = 0;
base_spd = global.game_spd;
speed_up_interval = 3;
next_speed_up = 0;
next_speed_up += speed_up_interval;
boss_interval = 10;
next_boss = 0;
next_boss += boss_interval;
has_looped = false;
boss_procedure = false;
leveled = false;
last = array_length(global.microgames) - 1;
dark_timer = 0;
load_game();


global.index = 0;
global.b_index = 0;
global.c_bos = noone;
randomize();
global.sh_microgames = array_shuffle(global.microgames);
global.sh_bosses = array_shuffle(global.bosses);
global.c_bos = global.bosses[global.b_index];


function pick_mio(_index=undefined){
	
	if is_undefined(_index){
		global.c_mio = global.sh_microgames[global.index];
	}
	
	else {
		global.c_mio = global.microgames[_index];
	};
	
};

function reset()
{
	if (global.index + 1 < array_length(global.sh_microgames)) global.index += 1;
	else {
		global.index = 0;	
		global.microgames = array_shuffle(global.sh_microgames);
	}
	pick_mio(11);
	game_room = global.c_mio.lvl1;
	next_played = false;
	go_played = false;
	result_played = false;
	score_added = false;
	life_lost = false;
	sped_up = false;
	leveled = false;
	has_reset = true;
	
	if (global.winning) jingle = snd_win;
	else jingle = snd_loss;

if (global.stage_state == "playing") global.stage_state = "result";
}

function add_score(){
	if !(score_added) {
		global.score += 1;
		score_added = true;
	}
}

function lose_life(){
	if !(life_lost) {
		global.life -= 1;
		life_lost = true;
	}
}

function speed_up(_increment){
	global.game_spd += _increment;
	global.stage_state = "speed up";
	sped_up = true;
	audio_play_sound(snd_speed_up, 10, false)
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

function level_up(){
	leveled = true;
	global.level++;
	audio_play_sound(snd_speed_up, 10, false)
	next_speed_up += speed_up_interval;
	global.stage_state = "level up";
}


function boss_stage(){
	next_boss += boss_interval;
	show_debug_message(next_boss);
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
	for (var i=0; i < array_length(global.highscores); i++;){
		if (global.score >= global.highscores[i]){
			array_insert(global.highscores, i, global.score);
			break;
		};
	};
	if (array_length(global.highscores) > 3) array_pop(global.highscores);
	save_game();
};

reset();
