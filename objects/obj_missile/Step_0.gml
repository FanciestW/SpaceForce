var player = instance_nearest(x, y, obj_spaceship);
var target_x;
var target_y;
if (player != noone) {
	target_x = player.x + player.sprite_width / 2;
	target_y = player.y + player.sprite_height / 2;
} else {
	target_x = room_width / 2;
	target_y = room_height + 50;
}

if (x < -16 || x >= room_width + 16) {
	instance_destroy(self);
} else if (y < -16 || y >= room_height + 16) {
	instance_destroy(self);	
}

// Point missile in target direction
var angle = point_direction(x, y, target_x, target_y);
image_angle = angle - 270;

// Make missile move in target direction
move_towards_point(target_x, target_y, velocity);