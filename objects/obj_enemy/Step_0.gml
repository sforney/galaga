/// @description Insert description here
// You can write your code in this editor
if(cur_state == enemy_state.DEAD) {
	obj_game.enemies[formation_slot] = -1;
	instance_destroy();	
} else if(cur_state == enemy_state.FORMATION) {
	x = obj_formation.formation_coords[formation_slot].x_form;
	y = obj_formation.formation_coords[formation_slot].y_form;
	if(sprite_index == idle_sprite) {
		image_index = obj_formation.idle_frame;
	}
} else if(cur_state == enemy_state.FLYIN || 
	cur_state == enemy_state.DIVE) {
	if(self.health > 0) {
		if(self.health == max_health) {
			animate_enemy(move_sprite);
		} else {
			animate_enemy(move_damaged_sprite);
		}
	}
}

