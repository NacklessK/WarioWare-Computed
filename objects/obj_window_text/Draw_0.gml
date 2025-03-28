draw_set_font(fnt_pixel);
draw_set_color(c_black);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var txt = "";
var alpha = 1;
var txt_x = 0;
var txt_y = 0;

var t_x = 0;
var t_y  = 0;

if (global.presentation == "extras") && (array_sum(global.unlocked_extras) == 0){
	txt = "No data found."
	alpha = 0.5;
}

else if (global.presentation == "data"){
	txt = "Factory reset WariOS?";
	t_y = -200;
}

else if (global.presentation == "shutdown"){
	txt = "Shutdown WariOS?"
	t_y = -200;
};

draw_set_alpha(alpha);

if (instance_exists(obj_menu_windows)){
    txt_x = t_x * (obj_menu_windows.image_xscale / 4);
	txt_y = t_y * (obj_menu_windows.image_xscale / 4);
}
else {
	txt_x = t_x;
	txt_y = t_y;
}


if (txt != "") && (instance_number(obj_menu_windows) > 0) draw_text_transformed(x + txt_x, y + txt_y, txt, obj_menu_windows.image_xscale, obj_menu_windows.image_yscale, 0);