global.end_time = get_timer() + (global.c_mio.time_limit / global.game_spd) * power(10, 6);
audio_play_sound(music, 10, false);
instance_create_layer(64, 725, "Bomb", obj_bomb, {image_xscale: 5, image_yscale: 5});
timer = 0;
c_time = get_timer();
finished = false;

if (no_mouse){
	cursor_sprite = -1
	window_set_cursor(cr_none);
}
else {
	cursor_sprite = mouse_sprite;
	if (mouse_sprite == -1) window_set_cursor(cr_default);
	else window_set_cursor(cr_none);

};

function end_game(){
	draw_set_alpha(1);
	room_goto(global.stage_room); 
	audio_stop_sound(music);
};