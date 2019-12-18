/// @description Insert description here
// You can write your code in this editor
menu_move = (keyboard_check_pressed(vk_down) | gamepad_button_check_pressed(0, gp_padd)) - (keyboard_check_pressed(vk_up) | gamepad_button_check_pressed(0, gp_padu));
menu_enter = keyboard_check_pressed(vk_enter) | keyboard_check_pressed(vk_space) | gamepad_button_check_released(0, gp_face1);

menu_index += menu_move;
if (menu_index < 0) menu_index = buttons - 1;
if (menu_index > buttons - 1) menu_index = 0;
if (menu_enter) {
	switch(menu_index) {
		// Play
		case 0:
			lives = 2;
			score = 0;
			room_goto(room_game);
			// instance_create_layer(x, y, layer_get_id("menu_layer"), obj_menu_player_selection);
			// instance_destroy(self);
			break;
		case 1:
			room_goto(room_instructions);
			break;
		// Exit
		case 2:
			game_end();
			break;
	}
}

last_selected = menu_index;
