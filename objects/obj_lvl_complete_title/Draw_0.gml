draw_set_font(font_title);
draw_set_color(c_white);
draw_set_halign(fa_center);
var text = room_get_name(room) == "room_lvl_complete" ? "Level Complete" : "Game over";
draw_text(room_width / 2, y, text);