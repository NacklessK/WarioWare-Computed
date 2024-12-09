if (obj_microgame.c_time + default_time > global.end_time){
	image_speed = frame_spd;
	image_alpha = 1;
	if (image_index > 1) animation_began = true;
	if (image_index < 1) && (animation_began) sprite_index = spr_boom;
	if (image_index > 5){
		if !(counter_created){
			instance_create_layer(x + 10, y - 100, "Counter", obj_bomb_counter, {image_speed: image_speed});
			counter_created = true;
		}
		if (floor(old_frame) != floor(image_index)){
			audio_play_sound(snd_tick, 10, false);
			old_frame = image_index;
		
		}
	
	
	}
}

else {
	image_speed = 0;
	image_alpha = 0;
};