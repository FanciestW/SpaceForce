draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_font(font_title);
draw_text(room_width / 2, y, "instructions");
draw_set_font(font_menu);
draw_text(room_width / 2, y + 150, "movement - W, A, S, D");
draw_text(room_width / 2, y + 200, "shoot - right shift");
draw_text(room_width / 2, y + 350, "press ESC to return to Main Menu");