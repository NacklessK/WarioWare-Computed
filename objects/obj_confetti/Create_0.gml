colors = [c_red, c_blue, c_purple, c_lime, c_green, c_yellow, c_orange];
color_index = round(random_range(0, array_length(colors) - 1));
image_blend = colors[color_index];
direction = 270;
speed = 7 * global.game_spd;
image_speed = global.game_spd;