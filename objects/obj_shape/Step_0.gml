if position_meeting(mouse_x, mouse_y, self) && !(global.figure_clicked){
		image_blend = c_silver;
		if (mouse_check_button(mb_left)){
			global.figure_clicked = true;
			if (array_equals(form, cs)){
				instance_create_layer(x, y, "Grade", obj_correct);
				global.winning = true;
			}
			else instance_create_layer(x, y, "Grade", obj_wrong);
		}
	}
	else image_blend = c_white;