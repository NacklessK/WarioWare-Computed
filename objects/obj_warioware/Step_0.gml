image_xscale = scale;
image_yscale = scale;

if (scale > og_scale){
	image_angle += 30;
	scale *= 0.9
};

if (global.game_start){
	y -= 15;
	if (y < -sprite_height * 2){
		instance_destroy();
		room_goto(rm_main_menu);
	};
};