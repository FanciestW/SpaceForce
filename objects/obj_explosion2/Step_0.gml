if (image_speed > 0) {
	if (image_index >= image_number - 1) {
		instance_destroy();
		show_debug_message("DESTROY");
	}
}
if (instance_exists(creator) && image_index >= 10) {
	instance_destroy(creator);
}