sprite_set_offset(spr_bullet, sprite_width / 2, 20);
direction = obj_lb_rocket.image_angle + 90;
image_angle = obj_lb_rocket.image_angle;


speed = 15 * global.game_spd;

image_xscale = 3;
image_yscale = 3;

audio_play_sound(snd_pew, 10, false);