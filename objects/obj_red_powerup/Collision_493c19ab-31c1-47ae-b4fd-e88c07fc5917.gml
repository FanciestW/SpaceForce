/// @description Insert description here
// You can write your code in this editor
if (other.primary_shoot_speed == 0 && other.can_shoot_primary == false) {
	other.can_shoot_primary = true;	
}
other.primary_shoot_speed += 2;
instance_destroy(self);