/// @description Rotate into formation
var formation_entered = enter_formation();
if(!formation_entered) {
	alarm_set(1, 2);
} else {
	cur_state = enemy_state.FORMATION;
	obj_formation.contents[formation_slot] = self;
	if(self.health == max_health) {
		sprite_index = idle_sprite;
	} else {
		sprite_index = damaged_sprite;
	}
}





