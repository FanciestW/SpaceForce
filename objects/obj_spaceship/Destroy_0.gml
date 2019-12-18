global.ship_lives -= 1;
if (global.ship_lives > 0) {
	instance_create_layer(spawn_x, spawn_y, layer_get_id("Instances"), obj_spaceship);	
} else {
	room_goto(room_gameover)
}