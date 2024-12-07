sprite = sprite_add("sprite.png", 1, 0, 0, 0, 0);
audio = audio_create_stream("audio.ogg")
sprite_index = sprite;
code = load_code("code.wpp");
//audio_play_sound(audio, true, 10);
onces = [];
repeat 10 array_push(onces, false);
sprite_set_offset(sprite_index, sprite_get_width(sprite_index) / 2, sprite_get_height(sprite_index) / 2);