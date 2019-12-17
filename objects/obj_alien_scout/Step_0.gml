if (!active) {
	exit;
}

if (hits_left <= 0) {
	active = false;
	var explosion = instance_create_depth(x + sprite_width / 2, y + sprite_height / 2, depth - 1, obj_explosion2);
	explosion.creator = self;
}

if (y > room_height) {
	instance_destroy(self);
}

if (x + hmove_speed <= -5) {
	hmove_speed *= -1;
}
if (x + hmove_speed >= room_width - 85) {
	hmove_speed *= -1;	
}

x += hmove_speed;
y += vmove_speed;