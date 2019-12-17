if (!active) {
	exit;
}

if (hits_left <= 0) {
	instance_destroy(self);
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

// Shooting
if (can_shoot) {
	instance_create_layer(gun_x, gun_y, layer_get_name("Instances"), obj_enemy_pink_bullet);
	var leftBullet = instance_create_layer(gun_x, gun_y, layer_get_name("Instances"), obj_enemy_pink_bullet);
	var rightBullet = instance_create_layer(gun_x, gun_y, layer_get_name("Instances"), obj_enemy_pink_bullet);
	leftBullet.x_velocity = -1 * (leftBullet.y_velocity / 2 );
	rightBullet.x_velocity = (leftBullet.y_velocity / 2);
	can_shoot = false;
	alarm[0] = room_speed / shoot_speed;
}