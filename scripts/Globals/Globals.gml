// General
global.score = 0;
global.winning = false;
global.stage_state = "next";
global.life = 4;
global.level = 2;
global.index = 0;
global.b_index = 0;
global.s_mio = 0;
global.s_type = "mio";
global.end_time = 0;
global.game_spd = 1;
global.losing = false;
global.one_up = false;
global.is_boss = false;
global.highscores = [0, 0, 0];
global.game_start = false;
global.stage_room = undefined;
global.c_stage = "";
global.presentation = "";
global.fullscreen = false;
global.vsync = false;

// Cutscenes
global.intro_cutscene = [rm_intro_0, rm_intro_1, rm_intro_2, rm_intro_3, rm_intro_4,
						rm_intro_5, rm_intro_6, rm_intro_7, rm_intro_8, rm_intro_9,
						rm_intro_10, rm_title_screen];

// Unlcokables (µGames in Microgames.gml)

global.unlocked_extras = [false, false, false]; // 1 - Missions; 2 - Cheats; 3 - DIY


// Audio
global.bgm =	[snd_mmx2_intro, snd_next, snd_win, snd_loss, snd_wario_whirled, snd_speed_up, 
				snd_pop_ups, snd_wlsi_sweet_stuff, snd_land_sand, snd_spaceship_music, 
				snd_floats_island, snd_mallow_castle, snd_vs_marx, snd_kssu_defeat, 
				snd_wobble_box, snd_crazy_cars, snd_anyone_home, snd_balance];
				
global.sfx = [snd_tick, snd_tick, snd_win_jingle3, snd_win_jingle4, snd_wlsi_mine, snd_correct, snd_wrong,
				snd_boss_sonic_hit, snd_kssu_hit, snd_hit, snd_booing];
				
global.vc = [snd_wario_laugh1, snd_wario_nono];

// Microgame Specific

// Figures

global.figure_clicked = false;

// Word Up

global.words = ["HAPPY", "WARIO", "GREAT", "SUPER", "COOL!"];
global.missing_letters = [[1, 3, 4], [1, 3, 2], [3, 1, 0], [1, 0, 4]];

// Empty file
//var f = file_text_open_read("empty");
//global.null_str = file_text_readln(f);