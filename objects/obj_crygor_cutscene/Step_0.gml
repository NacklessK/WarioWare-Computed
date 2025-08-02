if (timer > 0) timer--;
else if !(audio_played) && (room = rm_intro_10){
	audio_play_sound(snd_crygor_aw, 10, false);
	audio_played = true;
};