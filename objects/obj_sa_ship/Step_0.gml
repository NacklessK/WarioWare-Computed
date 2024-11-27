var _key_right = keyboard_check(vk_right);
var _key_left = keyboard_check(vk_left);
var _key_shoot = keyboard_check_pressed(vk_space);

x += (_key_right - _key_left) * 7 * global.game_spd;

if (_key_shoot) && (instance_number(obj_sa_bullet) < bullet_max){
	instance_create_layer(x, y, "Bullet", obj_sa_bullet);
}

if (x > 1150) x = 1150;
if (x < 272) x = 272;

