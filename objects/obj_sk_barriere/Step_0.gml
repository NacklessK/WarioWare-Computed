if (global.losing){
	if (timer < 60) image_index = !((floor(timer / 5)) % 2);
	else image_index = 1;
	timer += global.game_spd;
};