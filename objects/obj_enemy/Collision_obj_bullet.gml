/// @description Insert description here
// You can write your code in this editor
if(self.health > 0) {
	self.health--;
	if(cur_state == enemy_state.FLYIN || 
		cur_state == enemy_state.DIVE) {
		sprite_index = move_hit_sprite;
	} else {
		sprite_index = hit_sprite;
	}
	instance_destroy(other);
	alarm_set(0, 4);
}





