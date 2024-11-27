if (global.stage_state == "next"){
	timer = 0;
	spawned = false;
	x = room_width / 2;
	y = room_height / 2;
	image_xscale = 3.5;
	image_yscale = 3.5;
}

else if (global.stage_state == "result"){
	if !(spawned){
		image_xscale = 0.5;
		image_yscale = 0.5;
		x = origin_x;
		y = origin_y;
	};
	
	if (timer < 0) timer += global.game_spd;
	else{
	
		spawned = true;
		var spd = 0.3;
		var target_x = room_width / 2;
		var target_y = room_height / 2;
	
		if (x != target_x) x += (target_x - x) * spd * global.game_spd;
		if (y != target_x) y += (target_y - y) * spd * global.game_spd;
		if (image_xscale != 3.5){
			image_xscale += (3.5 - image_xscale) * spd * global.game_spd;
			image_yscale += (3.5 - image_yscale) * spd * global.game_spd;
		};
	};
	
};