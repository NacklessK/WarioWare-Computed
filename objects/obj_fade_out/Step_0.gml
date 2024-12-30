if !(reverse) progress ++;
else progress--;

if (progress == sec * game_get_speed(gamespeed_fps)){
   if (room != _room) room_goto(_room);
   reverse = true;
};

if (progress < 0) && (reverse) instance_destroy();