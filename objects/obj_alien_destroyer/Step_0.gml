if (!active) {
	exit;
}

if (hits_left <= 0) {
	active = false;
	var explosion = instance_create_depth(x + sprite_width / 2, y + sprite_height / 2, depth - 1, obj_explosion2);
	explosion.creator = self;
}