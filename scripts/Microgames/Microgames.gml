// Microgames
mio_wario_whirled = mio(0x0, "Wario Whriled", "Stop!", 0, 4, rm_wario_whirled);
mio_pop_up = mio(0x1, "Pop the Pop-ups", "Close!", 3, 4, rm_pop_ups);
mio_wlsi = mio(0x2, "Wario Land : Shake It!", "Shake!", 3, 6, rm_wlsi);
mio_figures = mio(0x3, "Figures", "Deduce!", 3, 4.5, rm_figures);
mio_straight_aim = mio(0x4, "Straight Aim", "Shoot!", 2, 4, rm_straight_aim);
mio_kssu = mio(0x5, "Kirby Superstar Ultra", "Spin!", 1, 5.5, rm_kssu);
mio_mashed_karate = mio(0x6, "Mashed Karate", "Mash!", 4, 4.5, rm_mashed_karate);
mio_trippin = mio(0x7, "GiT Trippin'", "Straighten up!", 3, 4, rm_trippin);
mio_pin = mio(0x8, "PIN'd", "Code?", 5, 4.5, rm_pin);
mio_sk = mio(0x9, "Sonic & Knuckles", "Beam!", 0, 4, rm_sk);
mio_word_up = mio(0xA, "Word Up", "Complete!", 4, 5, rm_word_up);

// Bosses

bos_launch_break = bos(0x0, "Launch Break", "Launch!", 3, rm_launch_break1);

// All microgames in one array 
global.microgames = [mio_wario_whirled, mio_pop_up, mio_wlsi, mio_figures, 
					mio_straight_aim, mio_kssu, mio_mashed_karate, mio_trippin, 
					mio_pin, mio_sk, mio_word_up];
					

// All bosses in one array					
global.bosses = [bos_launch_break];