if (image_speed > 0) {
	if (image_index > image_number - 1) {
		instance_destroy();
	}
}
if (image_index == 10) { 
	audio_play_sound(snd_explosion, 10, false);
}
if (instance_exists(creator) && image_index >= 10) {
	instance_destroy(creator);
}