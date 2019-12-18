// Update gun location
gun_x = x + sprite_width / 2;
gun_y = y + 110;

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

// Don't shoot unless in room
if (y < -130) {
	can_engage = false;
} else {
	can_engage = true;
}

// Shooting
if (can_shoot && can_engage) {
	instance_create_layer(gun_x, gun_y, layer_get_name("Instances"), obj_missile);
	can_shoot = false;
	alarm[0] = room_speed / shoot_speed;
}