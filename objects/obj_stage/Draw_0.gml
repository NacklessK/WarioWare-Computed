// Score Display
draw_set_color(c_white);
draw_set_font(global.folder_font);

var str_score = string_format(global.score, 3, 0);
repeat (2) str_score = string_replace(str_score, " ", "-")

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_transformed(x + 50, y, str_score, 4, 4, 0);

// Live Display
draw_set_color(c_black);
draw_set_font(fnt_lucida);

draw_text(240, 425, $"$lives = {global.life}");