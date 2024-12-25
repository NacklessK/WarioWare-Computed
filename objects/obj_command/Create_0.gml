offset_timer = 0;
offset_timer_limit = 30 / global.game_spd;
persistent = true;
command_size = 30;
command_x = room_width / 2;
command_y = room_height / 2;
command_timer = 0;
command = "";
drawing = false;
did_reset = false;

function reset(){
	command_size = 30;
	command_x = room_width / 2;
	command_y = room_height / 2;
	command_timer = 0;
	did_reset = true;
	offset_timer = 0;
	offset_timer_limit = 30 / global.game_spd;
	if !(global.is_boss) command = global.c_mio.command;
	else command = global.c_bos.command;
}

function draw(){
	offset_timer = 0;
	draw_set_font(global.command_font);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_transformed(command_x, command_y, command, command_size, command_size, 0);
	if (command_size > 5){
		command_size -= command_size * (0.2 * global.game_spd);
		command_timer = 0;
	}
	else if (command_timer < 120 / global.game_spd) command_timer++;
	else if (command_y > -sprite_height){
		command_y -= 20 * global.game_spd
	}
	else if (command_y <= -sprite_height){
		drawing = false;
		did_reset = false;
	}
};
