switch room{

case rm_intro_1:
	sprite_index = spr_wario_bike_side;
	if (timer < time){
		timer++;
	}

	else{
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
		sprite_index = spr_wario_pc_shocked;
	};
	break;
	
case rm_intro_5:
	sprite_index = spr_wario_angry;
	
}


