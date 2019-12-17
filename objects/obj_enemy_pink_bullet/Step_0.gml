y += y_velocity;
x += x_velocity;
if (y > room_height + sprite_height) { 
	instance_destroy(self);
}
if (x < -1 * sprite_width || x > room_width + sprite_width) {
	instance_destroy(self);
}