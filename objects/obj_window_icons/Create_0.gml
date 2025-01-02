if !(effect){
	image_index = entry;
	og_scale = image_xscale;
	target_x = x;
	target_y = y;
	clicked = false;

	y = -sprite_height * 2;
};

if (menu == 1) sprite_index = spr_options_icons;

default_sprite = sprite_index;

function vanish(){
	if (image_alpha > 0) image_alpha -= 0.1;
	else global.fade_icon = false;
	show_debug_message(image_alpha);
};