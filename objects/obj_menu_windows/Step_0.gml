image_xscale = scale;
image_yscale = scale;

if (open) scale += (4 - scale) * 0.2;
else if (opened) scale -= scale * 0.2;

if (abs(scale - 4) < 0.5) opened = true;


if (position_meeting(mouse_x, mouse_y, self)) && (mouse_check_button_pressed(mb_left)){
	open = false;
};

if (scale < 0.25){
	closed = true;
	if (wait < 1) wait++;
	else instance_destroy();
};