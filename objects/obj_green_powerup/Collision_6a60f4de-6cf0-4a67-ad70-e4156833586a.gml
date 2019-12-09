/// @description Insert description here
// You can write your code in this editor
if (other.secondary_shoot_speed == 0 && other.can_shoot_secondary == false) {
	other.can_shoot_secondary = true;	
}
other.secondary_shoot_speed += 2;
instance_destroy(self);