/// @description Insert description here
// You can write your code in this editor
menu_move = (keyboard_check_pressed(global.down_key) | gamepad_button_check_pressed(0, gp_padd)) - (keyboard_check_pressed(global.up_key) | gamepad_button_check_pressed(0, gp_padu));
menu_enter = keyboard_check_pressed(vk_enter) | keyboard_check_pressed(global.shoot_key) | gamepad_button_check_released(0, gp_face1);

menu_index += menu_move;
if (menu_index < 0) menu_index = buttons - 1;
if (menu_index > buttons - 1) menu_index = 0;
if (menu_enter) {
	switch(menu_index) {
		// Play
		case 0:
			score = 0;
			if (room_get_name(room) == "room_lvl_complete") {
				global.target_score += 5000;
			}
			room_goto(room_game);
			break;
		case 1:
			room_goto(room_menu);
			break;
	}
}

last_selected = menu_index;
