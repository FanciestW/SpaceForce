/// @description Insert description here
// You can write your code in this editor
y -= velocity;
if (y < -1 * sprite_height) { 
	instance_destroy(self);
}