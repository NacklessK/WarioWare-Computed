draw_self()

draw_set_font(fnt_pixel);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);



if (obj_index_select_box.boss) game = global.bosses[obj_index_select_box.sel_mio];
else game = global.microgames[obj_index_select_box.sel_mio];

var str = "";
if (global.unlocked_mio[obj_index_select_box.sel_mio]) str = game.name;
else str = "???";

draw_text_transformed(x, y + sprite_height / 2 + 30, str, 3, 3, 0);