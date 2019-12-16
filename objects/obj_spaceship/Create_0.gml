ship_health = 100;
active = true;

// Movement inputs:
up_input = ord("W");
down_input = ord("S");
left_input = ord("A");
right_input = ord("D");
shoot_input = vk_space;

// Ship parameters:
x_velocity = 0;
y_velocity = 0;
y_max_velocity = 5;
x_max_velocity = 8;
acceleration = 0.5;
drag = 0.2;
op_boost = 2;

ship_xcenter = x + sprite_width / 2;
ship_ycenter = y + sprite_height / 2;

// Bullet start positions:
primary_gun_x = x + 50;
primary_gun_y = y + 28;
side_gun1_x = x + 30;
side_gun1_y = y + 42; // or 44
side_gun2_x = x + 68;
side_gun2_y = y + 42;

primary_shoot_speed = 2;
secondary_shoot_speed = 0;
can_shoot_primary = true;
can_shoot_secondary = false;