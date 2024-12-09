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
dark_timer = 0;
load_game();
reset();

function reset(){
	pick_mio(global.s_mio[0]);
	game_room = global.c_mio.lvl1;
	game_room = global.c_mio.lvl1;
	next_played = false;
	go_played = false;
	result_played = false;
	score_added = false;
	life_lost = false;
	sped_up = false;
	leveled = false;
	has_reset = true;
};