// Update ship center position
ship_xcenter = x + sprite_width / 2;
ship_ycenter = y + sprite_height / 2;

// Update Bullet start positions
primary_gun_x = x + 50;
primary_gun_y = y + 28;
side_gun1_x = x + 30;
side_gun1_y = y + 42; // or 44
side_gun2_x = x + 68;
side_gun2_y = y + 42;

// Respawn Location
spawn_x = 448;
spawn_y = 992;

if (!active) {
	exit
}

// Check health
if (ship_health <= 0) {
	active = false;
	var explosion = instance_create_depth(x + sprite_width / 2, y + sprite_height / 2, depth - 1, obj_explosion1);
	explosion.creator = self;
}

// Shooting
if (keyboard_check(shoot_input)) {
	if (can_shoot_primary) {
		instance_create_layer(primary_gun_x, primary_gun_y, layer_get_name("Instances"), obj_red_bullet);
		can_shoot_primary = false;
		alarm[0] = room_speed / primary_shoot_speed;
	}
	if (can_shoot_secondary) {
		instance_create_layer(side_gun1_x, side_gun1_y, layer_get_name("Instances"), obj_green_bullet);
		instance_create_layer(side_gun2_x, side_gun2_y, layer_get_name("Instances"), obj_green_bullet);
		can_shoot_secondary = false;
		alarm[1] = room_speed / secondary_shoot_speed;
	}
}

// Apply velocity if within room bounds.
if (x < 0 && x_velocity < 0) {
	x_velocity = 0;
} else if (x + sprite_width > room_width && x_velocity > 0) {
	x_velocity = 0;
} else {
	x += x_velocity;
}

if (y < 0 && y_velocity < 0) {
	x_velocity = 0;
} else if (y + sprite_height > room_height && y_velocity > 0) {
	y_velocity = 0;
} else {
	y += y_velocity;
}

// Check user input and apply acceleration to according velocity.
if (keyboard_check(up_input)) {
	if (y_velocity > -1 * y_max_velocity) {
		y_velocity -= y_velocity > 0 ? acceleration * op_boost : acceleration;
	}
}
if (keyboard_check(down_input)) {
	if (y_velocity < y_max_velocity) {
		y_velocity += y_velocity < 0 ? acceleration * op_boost : acceleration;	
	}
}
if (keyboard_check(left_input)) {
	if (x_velocity > -1 * x_max_velocity) {
		x_velocity -= x_velocity > 0 ? acceleration * op_boost : acceleration;	
	}
}
if (keyboard_check(right_input)) {
	if (x_velocity < x_max_velocity) {
		x_velocity += x_velocity < 0 ? acceleration * op_boost : acceleration;
	}
}

// Constantly apply drag to the ship. Slows ship down if not accelerating.
if (x_velocity > 0) {
	x_velocity -= x_velocity - drag < 0 ? x_velocity : drag;
} else if ( x_velocity < 0) {
	x_velocity += x_velocity + drag > 0 ? x_velocity : drag;	
}

if (y_velocity > 0) {
	y_velocity -= y_velocity - drag < 0 ? y_velocity : drag;
} else if (y_velocity < 0) {
	y_velocity += y_velocity + drag > 0 ? y_velocity : drag;
}

// Debug messages to debug velocity and position
// show_debug_message("Velocity: " + string(x_velocity) + ", " + string(y_velocity));
// show_debug_message("Position: " + string(x) + ", " + string(y));