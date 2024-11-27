draw_set_font(global.command_font);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_transformed(room_width/2, 100, "High Scores", 4, 4, 0);

draw_text_transformed(150, 250, "1st..", 4, 4, 0);
draw_text_transformed(150, 450, "2nd..", 4, 4, 0);
draw_text_transformed(150, 650, "3rd..", 4, 4, 0);

draw_text_transformed(room_width - 50, 250, highscores[0], 4, 4, 0);
draw_text_transformed(room_width - 50, 450, highscores[1], 4, 4, 0);
draw_text_transformed(room_width - 50, 650, highscores[2], 4, 4, 0);



