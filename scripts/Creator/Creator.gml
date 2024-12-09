// Function used for microgame creation

function advance(x_vel, y_vel){
	x+=x_vel;
	y+=y_vel;
};

function slide(_x, _y, _spd){
	self.sliding = true;
	_spd /= 10;
	if (x != _x) x += (_x - x) * _spd;
	if (y != _y) y += (_y - y) * _spd;
	
	if (x == _x) && (y == _y) self.sliding = false;
};

function play_imported_audio(_filepath, _index, _priority=10, _loop=false){
	if (self.audios[_index] == undefined){
		_filepath = $"audio\\{_filepath}.ogg";
		self.audios[_index] = audio_create_stream(_filepath);
	};
	
	if !(audio_is_playing(self.audios[_index])) && !(self.audio_played){
		audio_play_sound(audios[_index], _priority, _loop);
		self.audio_played = true;
	};
};