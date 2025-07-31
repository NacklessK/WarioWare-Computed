if (idx == idx_end or idx == -1){
	idx = -1;
	if (wait > 0) wait--;
	else instance_destroy();
};

display_text(idx);
