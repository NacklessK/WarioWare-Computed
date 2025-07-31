// Fonts
global.command_font_map = "0123456789AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz?!.', ";
global.command_font = font_add_sprite_ext(spr_command, global.command_font_map, true, 2);

global.folder_font = font_add_sprite_ext(spr_folder_nums, "-0123456789", true, 2);

// Colors
c_wa = #fafc8a
c_cr = #5c8ce0

// Text list

global.txt = [];
add_txt("Diamond City - 200X", c_white, 200, 2, fnt_info, 0); // 0
add_txt("After getting robbed of all the treasure\n he earned from saving a princess...");
add_txt("Wario headed back to Diamond City\n without a single dime.");
add_txt("On his way back, he was thinking\n of a way to get rich again.")
add_txt("Wario's House")

add_txt("I have to make some money, and fast!",c_wa); // 5
add_txt("Wah?!", c_wa);
add_txt("A hundred gold coins?!", c_wa);
add_txt("WAAAAAAAAAAH!!!", c_wa, 200, 4);
add_txt("Ouchie...", c_wa, 100);

add_txt("Wait a second? A hundred gold coins?!", c_wa); // 10
add_txt("");
add_txt("Wahahaha!\nI have an idea!", c_wa, 200, 5);
add_txt("Dr. Crygor's Lab");
add_txt("I see! But making an operating system\n takes more than you think.", c_cr);

add_txt("What do you mean?", c_wa); //15
add_txt("Well, to make an OS, you'll need...", c_cr);
add_txt("Programmers...", c_cr);
add_txt("Graphic designers...", c_cr);
add_txt("Sound designers...", c_cr)

add_txt("And not to forget that you'll have to be\n crative to make it stand out!", c_cr) //20
add_txt("Alright! Amazing!", c_wa, 100);
add_txt("Tell eveyone! Tommorow 6PM,\n right when I wake up!Don't be late!", c_wa, 100);
add_txt("");
add_txt("... sigh...", c_cr, 150, 2);



