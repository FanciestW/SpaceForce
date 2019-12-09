// Update ship center position
ship_xcenter = x + sprite_width / 2;
ship_ycenter = y + sprite_height / 2

// Shooting
if (keyboard_check(shoot_input)) {
	if (can_shoot) {
		instance_create_layer(ship_xcenter, ship_ycenter, layer_get_name("Instances"), obj_red_bullet);
		can_shoot = false;
		alarm[0] = room_speed / shoot_speed;
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