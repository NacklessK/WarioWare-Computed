draw_self();

draw_set_alpha(1);
draw_set_color(c_white);
draw_set_font(fnt_info);

draw_set_valign(fa_middle);
draw_set_halign(fa_left);


var txt = "";



switch global.presentation{
	case "main":
		txt = "From here you can select an app with your mouse... That's it ! Now click something !"
		break;
	
	case "game":
		txt = "Okay now you can select the game mode you wish to play ! So go on, I know you wanna play my aweome games !"
		break;
		
	case "options":
		txt = "Is somthing not to your liking ? In here you can tweak anything you want... well limited anything."
		break;
	
	case "extras":
		if (array_sum(global.unlocked_extras) == 0) txt = "You didn't unlock any extras?! Bah! What a loser you are, go play some games and come back when you'll stop being a disgrace!"
		break;
	
	case "graphics":
		txt = "What?! You think my game looks ugly ! Well fix it yourself !"
		break;
	
	case "data":
		txt = "Wait! What are you doin? You're going to delete all your data! Don't do that!"
		break;
	
	case "shutdown":
		txt = "You don't wanna play my games?! Whatever! I didn't need you anyways! Go away!";
		break;

};

var limit = -26 * string_length(txt);

if (old_txt != txt) || (txt_x < limit)  txt_x = room_width;
old_txt = txt;

draw_text(txt_x, y, txt);
txt_x -= 3 * (1 + (mouse_check_button(mb_right)));