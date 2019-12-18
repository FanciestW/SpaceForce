randomize();
var i = irandom(drop_rate);
if (i == drop_rate / 2) {
	var drop = irandom(2);
	switch (drop) {
		case 0:
			instance_create_layer(x + sprite_width / 2, y + sprite_height / 2, "Instances", obj_red_powerup);
			break;
		case 1:
			instance_create_layer(x + sprite_width / 2, y + sprite_height / 2, "Instances", obj_blue_powerup);
			break;
		case 2:
			instance_create_layer(x + sprite_width / 2, y + sprite_height / 2, "Instances", obj_green_powerup);
			break;
	}
}