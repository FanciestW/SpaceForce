global.ship_lives -= 1;
if (global.ship_lives > 0) {
	destroy_all_instances(obj_missile);
	destroy_all_instances(obj_enemy_pink_bullet);
	destroy_all_instances(obj_alien_scout);
	destroy_all_instances(obj_alien_fighter);
	destroy_all_instances(obj_alien_destroyer);
	instance_create_layer(spawn_x, spawn_y, layer_get_id("Instances"), obj_spaceship);	
} else {
	room_goto(room_gameover)
}