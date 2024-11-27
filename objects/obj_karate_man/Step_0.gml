if (keyboard_check_pressed(vk_anykey)) && (string_letters(keyboard_lastchar) == keyboard_lastchar) && !(obj_karate_barrel.beaten){
    image_speed = global.game_spd * 2;	
}

if (image_index > 1) animation_began = true;

if (animation_began) && (floor(image_index) == 0){
	image_speed = 0;
	animation_began = false;
}