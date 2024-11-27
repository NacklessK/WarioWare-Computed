d_y = y;
coin_spawning = 0;
here = true;
vanishing = false;
image_speed = global.game_spd;

function move(){
	if (here){
		if (obj_wario_si.sprite_index == spr_wario_si_idle){
		var _wario_frame = floor(obj_wario_si.image_index);
		if (_wario_frame < 5) y = d_y + _wario_frame
		else if (_wario_frame >= 5) && (_wario_frame < 9) y = d_y + 5 - (_wario_frame - 4);
		else y = d_y + (_wario_frame - 9);
		}
	}
}

function shake(){
	if (here){
		if (obj_wario_si.sprite_index == spr_wario_si_shake){
			sprite_index = spr_coinbag_shook;
			coin_spawning += 0.25;
			if (coin_spawning == floor(coin_spawning)) instance_create_layer(x, y, "Coins", obj_coin_si);
		
		}
		else sprite_index = spr_coinbag_idle;
	}
}

function vanish(){
	if (obj_wario_si.shook > obj_wario_si.shook_goal){
		here = false;
		sprite_index = spr_wlsi_dust;
		if (image_index > 1) vanishing = true;
		if (floor(image_index) == 0) && (vanishing) instance_destroy();
	}
}