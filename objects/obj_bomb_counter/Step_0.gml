if (scale < 2) scale += (2 - scale) * 0.5;

if (old_frame != floor(image_index)){
	scale = spawn_scale;
	old_frame = floor(image_index)
}

if (image_index > 1) animation_began = true;

if (image_index < 1) && (animation_began) instance_destroy();

image_xscale = scale;
image_yscale = scale;