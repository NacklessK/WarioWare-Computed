sprite_index =  spr_bomb;
time_limit = global.c_mio.time_limit / global.game_spd;
frame_spd = (9 / 4) * global.game_spd;
animation_began = false;
old_frame = 0;
counter_created = false;
default_time =  (4 * power(10, 6)) / global.game_spd;