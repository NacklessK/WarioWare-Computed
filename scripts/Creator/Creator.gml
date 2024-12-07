// Function used for microgame creation

function advance(x_vel, y_vel){
	x+=x_vel;
	y+=y_vel;
};

function slide(_x, _y, _spd, _og_x=x, _og_y=y,){
	var x_spd = _x - _og_x / 10 - _spd;
	var y_spd = _y - _og_y / 10 - _spd;
	
	if () x += x_spd;
	y += y_spd;
};