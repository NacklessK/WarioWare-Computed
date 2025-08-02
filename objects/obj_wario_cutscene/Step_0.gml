switch room{

case rm_intro_1:
	sprite_index = spr_wario_bike_side;
	if (timer < time){
		timer++;
	}
	else{
		if !(voice_played){
			audio_play_sound(snd_speed, 10, false);
			audio_play_sound(snd_wario_laugh1, 10, false);
			voice_played = true;
		};
		x_vel += 1.5;
		x -= x_vel;
	}
	break;

case rm_intro_3:
	sprite_index = spr_wario_type;
	if (timer < time){
		timer++;
	}

	else{
		if !(voice_played){
			audio_stop_all();
			audio_play_sound(snd_wario_nono, 10, false);
			voice_played = true;
		};
		sprite_index = spr_wario_pc_shocked;
	};
	break;
	
case rm_intro_5:

	if (timer < time){
		if !(voice_played){
			audio_stop_all();
			audio_play_sound(snd_wario_wah, 10, false);
			voice_played = true;
		};
		sprite_index = spr_wario_pc_shocked;
		timer++;
	}
	else{
		if (timer < time + 60){
			timer++;
			voice_played = false;
			if !(audio_is_playing(snd_angry_music)) audio_play_sound(snd_angry_music, 10, false);
			sprite_index = spr_wario_sit_angry;
		}
		else if (y > -sprite_height * 2) && (x == og_x){
			y  += y_vel;
			y_vel -= 3;
			if !(voice_played){
				audio_play_sound(snd_wario_scream1, 10, false);
				voice_played = true;
			};
		}
		else if (y < 490){
			if (x == og_x) y_vel = 0;
			x = 380;
			y  += y_vel;
			y_vel += 0.5;
			sprite_index = spr_wario_fall;
		}
		else if (old_y == y){
			
			if (timer < time + 120){
				if (timer < time + 61) audio_play_sound(snd_wario_ah, 10, false);
				timer++;
				sprite_index = spr_wario_land;
			}
			else{
				if (timer < time + 200){
					sprite_index = spr_wario_whew;
					if (sprite_index == spr_wario_whew) && (image_index > 1) image_speed = 0;
					timer++;
				}
				
				else{
					audio_stop_all();
					sprite_index = spr_wario_land_shocked;
					
				}
			}
		}
	};
	break;
	
	case rm_intro_6:
		sprite_index = spr_wario_money;
		image_speed = 0;
		
		if (timer < time) timer++;
		else{
			image_speed = 1;
			if (timer < time + 50) timer++;
			else{
				if !(voice_played){
					audio_stop_all();
					audio_play_sound(snd_wario_laugh1, 10, false);
					voice_played = true;
				};
				sprite_index = spr_wario_money_laugh;
			};
		};
	
		break;
		
	case rm_intro_8:
		sprite_index = spr_wario_stand_side;
		break;
	
	case rm_intro_9:
		sprite_index = spr_wario_portrait;
		if (timer < time) timer++;
		else{
			
			if !(portraits[0]){
				instance_create_layer(168, 103, "Portraits", obj_portraits, {sprite_index: spr_crygor_portrait, image_xscale: 2, image_yscale: 2});
				portraits[0] = true;
			};
			
			if (timer < time + 200) timer++;
			else{
				if !(portraits[1]){
					instance_create_layer(1211, 116, "Portraits", obj_portraits, {sprite_index: spr_mona_portrait, image_xscale: 3, image_yscale: 3});
					portraits[1] = true;
				};
				
				if (timer < time + 400) timer++;
				else{
					
					if !(portraits[2]){
						instance_create_layer(1228, 520, "Portraits", obj_portraits, {sprite_index: spr_jimmy_portrait, image_xscale: 3, image_yscale: 3});
						portraits[2] = true;
					};
					
					if (timer < time + 600) timer++;
					else{
						if !(portraits[3]){
							instance_create_layer(168, 520, "Portraits", obj_portraits, {sprite_index: spr_9volt_portrait, image_xscale: 3, image_yscale: 3});
							portraits[3] = true;
						};
					};
				};
			};
		};
		break;
		
		case rm_intro_10:
			if !(voice_played){
				audio_play_sound(snd_wario_alright, 10, false);
				voice_played = true;
			};
			if (timer < time) timer++;
			else{
				sprite_index = spr_wario_charge;
				x_vel += 5;
				x -= x_vel;
			};
			break;
};

old_y = y;


