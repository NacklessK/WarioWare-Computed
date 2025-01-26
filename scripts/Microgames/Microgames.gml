// Microgames
mio_wario_whirled = mio(0, "Wario Whriled", "Stop!", 0, 4, rm_wario_whirled);
mio_pop_up = mio(1, "Pop the Pop-ups", "Close!", 3, 4, rm_pop_ups);
mio_wlsi = mio(2, "Wario Land : Shake It!", "Shake!", 3, 6, rm_wlsi);
mio_figures = mio(3, "Figures", "Deduce!", 3, 4.5, rm_figures);
mio_straight_aim = mio(4, "Straight Aim", "Shoot!", 2, 4, rm_straight_aim);
mio_kssu = mio(5, "Kirby Superstar Ultra", "Spin!", 1, 5.5, rm_kssu);
mio_mashed_karate = mio(6, "Mashed Karate", "Mash!", 4, 4.5, rm_mashed_karate);
mio_trippin = mio(7, "GiT Trippin'", "Straighten up!", 3, 4, rm_trippin);
mio_pin = mio(8, "PIN'd", "Code?", 5, 4.5, rm_pin);
mio_sk = mio(9, "Sonic & Knuckles", "Beam!", 0, 4, rm_sk);
mio_word_up = mio(10, "Word Up", "Complete!", 4, 5, rm_word_up);
mio_weak_link = mio(11, "The Weakest Link", "Answer!", 5, 6, rm_weakest_link);

// Bosses

bos_launch_break = bos(0x0, "Launch Break", "Launch!", 3, rm_launch_break1);

// All microgames in one array 
global.microgames = [mio_wario_whirled, mio_pop_up, mio_wlsi, mio_figures, 
					mio_straight_aim, mio_kssu, mio_mashed_karate, mio_trippin, 
					mio_pin, mio_sk, mio_word_up, mio_weak_link];
					

// All bosses in one array					
global.bosses = [bos_launch_break];

global.index_highscores = [];
global.unlocked_mio = []

repeat (array_length(global.microgames) + array_length(global.bosses)){
	array_push(global.index_highscores, [0, 0, 0]);
	array_push(global.unlocked_mio, false);
};
