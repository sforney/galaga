/// @description Insert description here
// You can write your code in this editor
if(self.health > 0 && obj_player.cur_state == player_state.ALIVE) {
	self.health = 0;
	if(cur_state == enemy_state.FLYIN || 
		cur_state == enemy_state.DIVE) {
		sprite_index = move_hit_sprite;
	} else {
		sprite_index = hit_sprite;
	}
	path_end();
	path_delete(cur_path);
	alarm_set(0, 4);
}









