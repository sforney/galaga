/// @description Insert description here
// You can write your code in this editor
if(self.health > 0) {
	self.health--;
	if(!is_in_formation) {
		sprite_index = move_hit_sprite;
	} else {
		sprite_index = hit_sprite;
	}
	instance_destroy(other);
	alarm_set(0, 4);
}





