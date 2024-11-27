countdown_f = false;
countdown_played = false;
music_started = false;
step = (y - room_height / 2) / (20 * global.game_spd);
launch_x = 0;
launch_y = 0;
free = true;
dead = false;
timer = 30;

layer_set_visible("Black", false);
audio_play_sound(snd_boss_start, 10, false);

function shoot(){
	if (mouse_check_button_pressed(mb_left)) && (instance_number(obj_lb_bullet) < 3){
		instance_create_layer(x, y, "Bullets", obj_lb_bullet);
		}
}