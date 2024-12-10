
switch purpose{
	
	case "demo":
		boss_interval = 10;
		speed_up_interval = 3;
		base_spd = 0;
		is_silent = false;
		is_random = true;
		break;
	
	case "index":
		boss_interval = -1;
		speed_up_interval = -1;
		base_spd = 0;
		is_silent = true;
		is_random = false;
		break;
};

base_spd = global.game_spd;

next_speed_up = 0;
next_speed_up += speed_up_interval;


next_boss = 0;
next_boss += boss_interval
has_looped = false;
boss_procedure = false;
leveled = false;

last = array_length(global.microgames) - 1;
dark_timer = 0;
load_game();


global.index = 0;
global.b_index = 0;
global.c_mio = global.microgames[global.index];
global.c_bos = global.bosses[global.b_index];
randomize();
global.sh_microgames = array_shuffle(global.microgames);
global.sh_bosses = array_shuffle(global.bosses);
global.c_bos = global.bosses[global.b_index];

function reset()
{
	if (global.index + 1 < array_length(global.sh_microgames)) global.index += 1;
	else {
		global.index = 0;	
		global.microgames = array_shuffle(global.sh_microgames);
	}
	if (is_random) pick_mio();
	if (is_random) pick_mio(global.s_mio);
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
};



reset();