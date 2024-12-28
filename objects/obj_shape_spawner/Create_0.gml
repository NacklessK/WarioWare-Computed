global.figure_clicked = false;

shape_x = 164;
shape_y = 544;

hint_x = 340;
hint_y = 150;

color = 0;
size = 0;
shape = 0;

randomize();
cs_color = round(random_range(0, 2));
cs_size = round(random_range(1, 2)) / 2;
cs_shape = round(random_range(1, 2)) * 3;
cs_index = round(random_range(0, 2));

instance_create_layer(hint_x, hint_y, "Shapes", obj_shape_hints, {image_index: cs_color})

hint_x += 343;

instance_create_layer(hint_x, hint_y, "Shapes", obj_shape_hints, {image_index: cs_size * 2 + 2})

hint_x += 343;

instance_create_layer(hint_x, hint_y, "Shapes", obj_shape_hints, {image_index: cs_shape / 3 + 5})

function random_shape(){
	randomize();
	color = round(random_range(0, 2));
	size = round(random_range(1, 2)) / 2;
	shape = round(random_range(1, 2)) * 3;
}

shape_list = [[cs_color, cs_size, cs_shape]];

anti_loop = 0;

for (var i = 0; i <= 2; i++;){
	if (i != cs_index){
		random_shape();
		form = [color, size, shape];
		anti_loop = 0;
		if (array_length(shape_list) > 1){
			while ((array_equals(form, shape_list[0])) || (array_equals(form, shape_list[1]))) && (anti_loop < 3){
			random_shape(); 
			anti_loop++;
			}
			anti_loop = 0;
		}
		else{
			while (array_equals(form, shape_list[0])) && (anti_loop < 10){
			random_shape();
			anti_loop++;
			};
		};
		 
		 array_push(shape_list, [color, size, shape])
			
		instance_create_layer(shape_x, shape_y, "Shapes", obj_shape,{
		color: color, size: size, shape: shape})
	}
	else{
		instance_create_layer(shape_x, shape_y, "Shapes", obj_shape,{
		color: cs_color, size: cs_size, shape: cs_shape})
	}
	
	shape_x += 514;
}

