txt = ["Diamond City - 200X",
		"After getting robbed of all the treasure\n he earned from saving a princess...",
		"Wario headed back to Diamond City\n without a single dime.",
		"On his way back, he was thinking\n of a way to get rich again.",
		"Wario's House"]
		
cmd = global.command_font
		
times = [200, 200, 200, 200, 100];
sizes = [2, 3, 3, 3, 3];
fonts = [fnt_info, cmd, cmd, cmd, cmd];
y_offsets = [0, 40, 40, 40, 40];
time = times[idx];

fade = 50;

function display_text(index, color){
	draw_set_color(color);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	if (index != -1){
		var offset = y_offsets[index]
		draw_set_font(fonts[index]);
		if (time > times[index] - fade) draw_set_alpha(abs(time - times[index]) / fade);
		if (time < fade) draw_set_alpha(time / fade);
		if (string_pos("\n", txt[index]) != 0) offset += 5;
		draw_text_transformed(x, y + offset, txt[index],  sizes[index],  sizes[index], 0);
		time--;
	}
	else draw_text(0, 0, "");
	if (time <= 0){
		if (idx + 1 < array_length(txt)) && (idx != -1){
			time = times[idx];
			idx++;
		}
		else idx = -1;
	};
};
