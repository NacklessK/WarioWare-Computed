var _key_right = keyboard_check_pressed(vk_right);
var _key_left = keyboard_check_pressed(vk_left);

if (die_timer == 0) {
		if (spinning){
		if (next_cap == floor(image_index)){
			image_speed = 0;
			if !(spin_added) spin++; spin_added = true;
			if  (floor(image_index) == 0){
				if (_key_left){
					image_speed = global.game_spd;
					next_cap += 4;
					spin_added = false;
				}
			}
			if  (floor(image_index) == 4){
			if (_key_right){
					image_speed = global.game_spd;
					next_cap += 4;
					spin_added = false;
				}
			}
		}
	}

	if (spin >= 6) && !(global.winning){
		spinning = false;
		if !(anim_looped) sprite_index = spr_kssu_kirby_throw;
		image_speed = global.game_spd;
		if !(thrown){
		instance_create_layer(x + 38, y, "Hammer", obj_kssu_hammer, {image_xscale: 4, image_yscale: 4});
		thrown = true;
		};
		if (image_index > 0.5) anim_looped = true;
		if (image_index < 1) && (anim_looped){
			sprite_index = spr_kssu_kirby_thrown;
		}
	}
};

if (multi_place_meeting(x, y, enemies)) && (die_timer == 0){
	if (instance_exists(obj_microgame)) audio_stop_sound(obj_microgame.music);
	audio_play_sound(snd_kssu_hit, 10, false);
	sprite_index = spr_kssu_kirby_ow;
	die_timer = 1;
};

if (die_timer >= 1) {
    if (die_timer < 40) die_timer += global.game_spd;
	else{
		
		if !(defeat_played){
			audio_play_sound(snd_kssu_defeat, 10, false);
			defeat_played = true;
		};
		sprite_index = spr_kssu_kirby_die;
		image_speed = global.game_spd;
		if !(jumped){
			y_vel = -20;
			jumped = true;
		} 
		
		else y_vel += 0.5 * global.game_spd;
	};
};

if (global.winning){
	sprite_index = spr_kssu_kirby_happy; 
	if (floor(image_index) == 1) image_speed = 0;
};

next_cap %= 8;
y += y_vel;