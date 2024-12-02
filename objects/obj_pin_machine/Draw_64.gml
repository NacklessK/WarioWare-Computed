draw_set_font(font);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

keyboard_string = string_digits(keyboard_string);

if (string_length(keyboard_string) > 4) keyboard_string = string_copy(keyboard_string, 1, 4);

draw_text_transformed(fnt_x, fnt_y, keyboard_string, 0.75, 0.75, 0);