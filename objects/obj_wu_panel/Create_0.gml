image_speed = 0;
word = obj_wu_ship.word
font_index = 99;
animation_began = false;
flipped = false;
assigned = false;
selected = false;

for (var i=0; i < global.level; i++;){

	if (index == global.missing_letters[obj_wu_ship.word_index][i]){
		letter = "?";
		real_letter = string_char_at(word, index + 1);
		assigned = true;
	}

	else if !(assigned) letter = string_char_at(word, index + 1);
	font_index = get_index_string(global.command_font_map, letter);
}

instance_create_layer(x, y, "Letters", obj_wu_letters, {image_xscale:3, 
														image_yscale:3, 
														image_index:font_index, 
														panel:id});