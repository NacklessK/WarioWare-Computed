image_xscale = scale;
image_yscale = scale;

if (scale > og_scale){
	image_angle += 30;
	scale *= 0.9
};

if (global.game_start){
	y += (-sprite_height  - y) * 0.3;
	if (y < -sprite_height) instance_destroy();
};