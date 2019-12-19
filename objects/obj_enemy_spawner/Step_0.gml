if (base_can_spawn) {
	base_can_spawn = false;
	var random_enemy = irandom(2);
	switch (random_enemy) {
		case 0:
			if (irandom(scout_spawn_rate) == 0 && scout_can_spawn && instance_number(obj_alien_scout) < scout_limit) {
				var create_x = irandom(room_width - sprite_get_width(spr_alien_scout) - 10);
				if (place_free(create_x, y)) {
					instance_create_layer(create_x, y, "Instances", obj_alien_scout);
				}
			}
		break;
		case 1:
			if (irandom(fighter_spawn_rate) == 0 && fighter_can_spawn && instance_number(obj_alien_fighter) < fighter_limit) {
				var create_x = irandom(room_width - sprite_get_width(spr_alien_fighter) - 10);
				if (place_free(create_x, y)) {
					instance_create_layer(create_x, y, "Instances", obj_alien_fighter);
				}
			}
		break;
		case 2:
			if (irandom(destroyer_spawn_rate) == 0 && destroyer_can_spawn && instance_number(obj_alien_destroyer) < destroyer_limit) {
				var create_x = irandom(room_width - sprite_get_width(spr_alien_destroyer) - 10);
				if (place_free(create_x, y)) {
					instance_create_layer(create_x, y, "Instances", obj_alien_destroyer);
				}
			}
		break;
	}
	alarm[0] = room_speed / base_spawn_speed;
}