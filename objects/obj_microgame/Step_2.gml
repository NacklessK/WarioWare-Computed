if !(finished) || (noskip) c_time = get_timer();
else c_time = global.end_time;

if (c_time >= global.end_time){
	end_game();
}

if (global.losing || global.winning) && !(finished){
	timer += global.game_spd;
	
	if (timer >= 60){
		finished = true;
		timer = 0;
	};
};