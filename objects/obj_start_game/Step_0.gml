var pressed = (keyboard_check_pressed(vk_space)) || ((position_meeting(mouse_x, mouse_y, self)) &&  (mouse_check_button_pressed(mb_left)));

if pressed && (image_alpha == d_alpha){
	start = true;
	load_game();
};

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
			if !(faded) instance_create_layer(0, 0, "Fade", obj_fade_in, {sprite_index: bg_crescent,
																		image_xscale: 1366 / 285,
																		image_yscale: 768 / 160});
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
