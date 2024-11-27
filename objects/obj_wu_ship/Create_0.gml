randomize();
word_index = random_range(0, array_length(global.words) - 1);
word = global.words[word_index];
target_x = -9999;
shot = false;
real_count = 0;
chosen_panel = noone;
travelling = false;
miss_count = 0;

layer_vspeed("Stars", 10 * global.game_spd);