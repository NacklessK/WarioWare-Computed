// General
global.score = 0;
global.winning = false;
global.stage_state = "next";
global.life = 4;
global.level = 1;
global.index = 0;
global.b_index = 0;
global.end_time = 0;
global.game_spd = 1;
global.losing = false;
global.one_up = false;
global.is_boss = false;
global.highscores = [0, 0, 0];

// Audio
global.bgm = [snd_next, snd_win, snd_loss, snd_wario_whirled, snd_speed_up, snd_pop_ups, snd_sweet_stuff, snd_land_sand, snd_spaceship_music, snd_floats_island, snd_wobble_box, snd_crazy_cars, snd_anyone_home];
global.sfx = [snd_tick, snd_tick, snd_win_jingle3, snd_win_jingle4, snd_mine, snd_correct, snd_wrong, snd_boss_sonic_hit, snd_kssu_hit, snd_hit];

// Microgame Specific

// Figures

global.figure_clicked = false;

// Word Up

global.words = ["HAPPY", "WARIO", "GREAT", "SUPER", "COOL!"];
global.missing_letters = [[1, 3, 4], [1, 3, 2], [3, 1, 0], [1, 0, 4]];