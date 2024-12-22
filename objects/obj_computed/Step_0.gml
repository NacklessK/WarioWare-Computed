if (obj_warioware.scale <= obj_warioware.og_scale) && !(effect){
	if (timer < 20) timer++;
	else x += (target_x - x) * 0.2;
	
	if (abs(x - target_x) < 10) && !(effect_created){
		instance_create_layer(x, y, "ComputedFX", obj_computed, {image_xscale: image_xscale, image_yscale: image_yscale, effect: true});
		effect_created = true;
	};
};

if (effect){
	image_xscale += 1;
	image_yscale += 1;
	image_alpha -= 0.07;
	if (image_alpha <= 0){
		instance_destroy();
	};
};

if (global.game_start){
	y -= 20;
	if (y < -sprite_height) instance_destroy();
};