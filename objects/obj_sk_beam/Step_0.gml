if (place_meeting(x, y, obj_sk_floor)){
	if (place_meeting(x, y, obj_sk_sonic)){
		global.winning = true;
	}
	else global.losing = true;
}
	
if (global.losing){
	boom += 1 * global.game_spd;
	if (boom > 5){
		randomize()
		boom = 0;
		instance_create_layer(random_range(0, room_width), random_range(0, room_height), "Explosions", obj_sk_expolsion, {image_xscale: 3, image_yscale: 3})
	}
}

if (image_index > 5) image_speed = 0; mask_index = spr_empty;