if (menu == 1) sprite_index = spr_options_icons;

if !(effect){
	image_index = entry;
	og_scale = image_xscale;
	target_x = x;
	target_y = y;
	clicked = false;

	y = -sprite_height * 2;
}

else image_index = entry + image_number / 2;

default_sprite = sprite_index;

function vanish(){
	if (image_alpha > 0) image_alpha -= 0.1;
	else global.fade_icon = false;
};