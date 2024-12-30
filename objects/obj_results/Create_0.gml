if (global.c_stage == "demo") highscores = global.highscores;
else highscores = global.index_highscores[global.s_mio];
instance_destroy(obj_stage);