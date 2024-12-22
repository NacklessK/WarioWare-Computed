if (keyboard_check_pressed(vk_space)) && (image_alpha == d_alpha) start = true;

if !(bg){
	if (instance_number(obj_computed) == 1) && ((abs(obj_computed.x - obj_computed.target_x) < 3)){
		if (image_alpha < 1){
			image_alpha += 0.1;
			if !(bg_created){ 
				instance_create_layer(x, y, "StartGameBG", obj_start_game, {image_xscale: image_xscale,
																		image_yscale: image_yscale,
																		bg: true, button_id: id});
				bg_created = true;
			};
		};
	};
};

if (bg){
	if (image_index == 0)
	image_alpha = d_alpha;
	image_index = 1;
};

if (start){
	if !(bg){
		if (flicker < 8) {
			flicker += 0.2;
			image_alpha = round(flicker % 1) * d_alpha;
		}
		
		else{
			global.game_start = true;
			y -= 30;
			global.game_start = true;
			if (y < -sprite_height * 1.5) instance_destroy();
		};
		
	}
	
	else {
		image_alpha = button_id.image_alpha * d_alpha;
		y = button_id.y
		if (y < -sprite_height) instance_destroy();
	};
};
