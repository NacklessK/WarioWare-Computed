if (keyboard_check_pressed(vk_space)) speed = 10 * global.game_spd;
	

if (place_meeting(x, y, obj_wheel))
{
	speed = 0;
	wheel_touched = true;
	global.winning = place_meeting(x, y, obj_slice);
}

if (speed > 0) instance_create_layer(x + 15, y, "Shaft", obj_shaft);

