image_xscale += ((1366 / 260) - image_xscale) * 0.3;
image_yscale += ((768 / 160) - image_yscale) * 0.3;

if (abs(1366 / 260 - image_xscale) < 0.1){
	room_goto(rm_index_menu);
};