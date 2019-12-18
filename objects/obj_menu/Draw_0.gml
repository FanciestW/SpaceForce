/// @description Insert description here
// You can write your code in this editor
draw_set_font(font_menu);
draw_set_halign(fa_center);
// Draw score if game over.
if (room_get_name(room) == "game_over_room") {
	draw_text(pos_x, pos_y - line_h, "Score: " + string(score));
}
var i = 0;
repeat(buttons) {
	draw_set_color(c_white);
	if (menu_index == i){
		draw_set_color(c_yellow);
		draw_text(pos_x, pos_y + line_h * i, button[i]);
	} else {
		draw_text(pos_x, pos_y + line_h * i, button[i]);
	}
	i++;
}

