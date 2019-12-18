var player = instance_find(obj_spaceship, 0);

draw_set_halign(fa_left);
draw_set_font(font_consolas);
draw_set_color(c_white);
draw_text(x + 10, y, "Health: " + string(player.ship_health));
draw_text(x + 140, y, "Lives: " + string(global.ship_lives));
draw_text(x + 250, y, "Target Score: " + string(global.target_score));
draw_text(x + 500, y, "Score: " + string(score));