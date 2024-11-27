randomize();
actual_pin = string_format(round(random_range(0, 9999)), 4, 0);

repeat (2) {
	actual_pin = string_replace(actual_pin, " ", "0")
}
