x = obj_window_wario.x;
y = obj_window_wario.y;
image_xscale = obj_window_wario.image_xscale;
image_yscale = obj_window_wario.image_yscale
image_speed = global.game_spd;


if (global.stage_state == "result") {
    	if (global.winning) sprite_index = spr_window_wario_face_win;
		else sprite_index = spr_window_wario_face_lose;
}
else if !(global.stage_state == "game over"){
    sprite_index = spr_window_wario_face_neutral;
}

else sprite_index = spr_window_wario_face_lose;