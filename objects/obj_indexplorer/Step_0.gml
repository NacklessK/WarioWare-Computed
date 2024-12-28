image_xscale += ((1366 / 260) - image_xscale) * 0.2;
image_yscale += ((768 / 160) - image_yscale) * 0.2;

if (abs(1366 / 260 - image_xscale) < 0.05){
	room_goto(rm_index_menu);
};