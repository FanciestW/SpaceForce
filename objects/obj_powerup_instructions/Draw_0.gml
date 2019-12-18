var gp = instance_find(obj_green_powerup, 0);
var rp = instance_find(obj_red_powerup, 0);
var bp = instance_find(obj_blue_powerup, 0);

draw_set_font(font_menu);
draw_set_halign(fa_left);
draw_set_color(c_white);

draw_text(bp.x + 25, bp.y - 32, "- upgrade primary guns");
draw_text(gp.x + 25, gp.y - 32, "- upgrade secondary guns");
draw_text(rp.x + 25, rp.y - 32, "- restore health");