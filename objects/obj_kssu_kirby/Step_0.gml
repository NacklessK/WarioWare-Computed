var _key_right = keyboard_check_pressed(vk_right);
var _key_left = keyboard_check_pressed(vk_left);

if (spinning){
	if (next_cap == floor(image_index)){
		image_speed = 0;
		if !(spin_added) spin++; spin_added = true;
		if  (floor(image_index) == 0){
			if (_key_left){
				image_speed = global.game_spd;
				next_cap += 4;
				spin_added = false;
			}
		}
		if  (floor(image_index) == 4){
		if (_key_right){
				image_speed = global.game_spd;
				next_cap += 4;
				spin_added = false;
			}
		}
	}
}

if (spin >= 6){
	spinning = false;
	sprite_index = spr_kssu_kirby_throw;
	image_speed = global.game_spd;
	if !(thrown){
	instance_create_layer(x + 38, y, "Hammer", obj_kssu_hammer, {image_xscale: 4, image_yscale: 4});
	thrown = true;
	}
	if (floor(image_index) == 3 ) image_speed = 0;
}

next_cap %= 8;