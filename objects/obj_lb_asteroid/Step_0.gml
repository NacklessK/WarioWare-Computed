if (obj_lb_rocket.countdown_f){
	direction = point_direction(x, y, obj_lb_rocket.x, obj_lb_rocket.y);
	speed = spd * global.game_spd;
}

if (place_meeting(x, y, obj_lb_bullet)){
	instance_create_layer(x, y, "Asteroid", obj_lb_debris, {direction: direction - 45})
	instance_create_layer(x, y, "Asteroid", obj_lb_debris, {direction: direction + 45})
	instance_destroy();
}

if (obj_lb_rocket.dead) instance_destroy();