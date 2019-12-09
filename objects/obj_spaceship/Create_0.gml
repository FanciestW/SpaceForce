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


shoot_speed = 5; // allowed bullets per second.
can_shoot = true;

ship_xcenter = x + sprite_width / 2;
ship_ycenter = y + sprite_height / 2