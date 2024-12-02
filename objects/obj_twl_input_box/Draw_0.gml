draw_self();
draw_set_font(font);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

keyboard_string = string_digits(keyboard_string);

if (string_length(keyboard_string) > 9) keyboard_string = string_copy(keyboard_string, 1, 9);
if (obj_twl_man.percent) input = keyboard_string;

draw_text_transformed(fnt_x, fnt_y, input, 1, 1, 0);