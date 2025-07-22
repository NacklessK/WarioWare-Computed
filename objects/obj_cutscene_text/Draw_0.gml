if (idx == idx_end or idx == -1){
	idx = -1;
	if (wait > 0) wait--;
	else instance_destroy();
	show_debug_message(wait)
};

display_text(idx);
