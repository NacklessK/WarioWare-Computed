if (c_index != obj_karate_barrel.hit_counter){
	image_alpha = 1;
	if (timer = 0) audio_play_sound(snd_hit, 10, false);
	if (timer < 10 / global.game_spd) timer++;
	else c_index = obj_karate_barrel.hit_counter;
}
else{
	image_alpha = 0;
	timer = 0;
}