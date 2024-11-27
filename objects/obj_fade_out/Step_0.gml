if !(reverse) progress ++;
else progress--;

if (progress == sec * game_get_speed(gamespeed_fps)){
   room_goto(rm_game_over);
   reverse = true;
};

if (progress < 0) && (reverse) instance_destroy();