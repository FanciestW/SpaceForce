if (base_can_spawn) {
	base_can_spawn = false;
	var random_enemy = irandom(2);
	switch (random_enemy) {
		case 0:
			if (irandom(scout_spawn_rate) == 0 && scout_can_spawn && instance_number(obj_alien_scout) < scout_limit) {
				instance_create_layer(irandom_range(1, room_width / 32 - 1) * 32, y, "Instances", obj_alien_scout);
			}
		break;
		case 1:
			if (irandom(fighter_spawn_rate) == 0 && fighter_can_spawn && instance_number(obj_alien_fighter) < fighter_limit) {
				instance_create_layer(irandom_range(1, room_width / 32 - 1) * 32, y, "Instances", obj_alien_fighter);
			}
		break;
		case 2:
			if (irandom(destroyer_spawn_rate) == 0 && destroyer_can_spawn && instance_number(obj_alien_destroyer) < destroyer_limit) {
				instance_create_layer(irandom_range(1, room_width / 32 - 1) * 32, y, "Instances", obj_alien_destroyer);
			}
		break;
	}
	alarm[0] = room_speed / base_spawn_speed;
}