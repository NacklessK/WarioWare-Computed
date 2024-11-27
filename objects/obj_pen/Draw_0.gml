draw_set_color(c_blue);
draw_set_alpha(alpha);

if (array_length(x_lst) > 2){
	for (var i=0; i < array_length(x_lst) - 1; i++;){
		if (place_meeting(x_lst[i], y_lst[i], obj_paper_sheet)) && (place_meeting(x_lst[i+1], y_lst[i+1], obj_paper_sheet)) && (i > 1){
			draw_line(x_lst[i], y_lst[i], x_lst[i+1], y_lst[i+1])
		}
	}
}

draw_self();