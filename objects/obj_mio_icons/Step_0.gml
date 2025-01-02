if !(effect){
	image_alpha += (1 - image_alpha) * 0.1;

	if (instance_position(mouse_x, mouse_y, self)){
		if !(boss) obj_index_select_box.image_blend = make_color_rgb(23, 178, 209);
		else obj_index_select_box.image_blend = c_orange;
		obj_index_select_box.x = x;
		obj_index_select_box.y = y;
		obj_index_select_box.sel_mio = entry;
		obj_index_select_box.boss = boss;
	
		if (mouse_check_button_pressed(mb_left)) && !(clicked){
			instance_create_layer(x, y, "IconsFX", obj_mio_icons, {effect: true, boss: boss, entry: entry});
			clicked = true;
		};
	}
	else if !(position_meeting(mouse_x, mouse_y, obj_mio_icons)) obj_index_select_box.y = -100;
}

else {
	image_xscale += 0.8;
	image_yscale = image_xscale;
	image_alpha -= 0.1;
	
	global.s_mio = entry;
	if (boss) global.s_type = "boss";
	else global.s_type = "mio";
	global.stage_room = rm_index_player;
	fade_out(rm_index_player, .5);
	
};