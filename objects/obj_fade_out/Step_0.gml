if !(reverse) progress ++;
else progress--;

if (progress == sec * game_get_speed(gamespeed_fps)){
   if (room != _room) room_goto(_room);
   if (instance_exists(obj_menu_windows)) obj_menu_windows.open = false;
   reverse = true;
};

if (progress < 0) && (reverse) instance_destroy();