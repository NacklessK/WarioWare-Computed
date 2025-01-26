image_index = entry;
if (boss) image_index += image_number - 2;
if !(effect) image_alpha = 0;
clicked = false;

unlocked = global.unlocked_mio[image_index]

if !(unlocked) image_index = image_number - 1;