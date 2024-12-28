image_alpha += (1 - image_alpha) * 0.1;

if (instance_position(mouse_x, mouse_y, self)){
	if !(boss) obj_index_select_box.image_blend = make_color_rgb(23, 178, 209);
	else obj_index_select_box.image_blend = c_orange;
	obj_index_select_box.x = x;
	obj_index_select_box.y = y;
}
else if !(position_meeting(mouse_x, mouse_y, obj_mio_icons)) obj_index_select_box.y = -100;