var alpha = ceil(times) % 2;
draw_set_alpha(alpha);
draw_set_color(c_white);
draw_rectangle(0,0,display_get_gui_width(), display_get_gui_height(),false);
if (times > 0) times -= spd * global.game_spd;
else instance_destroy();