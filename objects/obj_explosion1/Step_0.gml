if (image_speed > 0) {
	if (image_index >= image_number) {
		instance_destroy();
	}
}
if (instance_exists(creator) && image_index >= 34) {
	instance_destroy(creator);
}