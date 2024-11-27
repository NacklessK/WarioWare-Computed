global.end_time = get_timer() + (global.c_mio.time_limit / global.game_spd) * power(10, 6);
audio_play_sound(music, 10, false);
instance_create_layer(64, 725, "Bomb", obj_bomb, {image_xscale: 2, image_yscale: 2});
timer = 0;
c_time = get_timer();
finished = false;

function end_game(){
	room_goto(rm_demo_stage); 
	audio_stop_sound(music)
};