/// @description Damage or destroy
if (self.health > 0) {
	if(cur_state == enemy_state.FORMATION) {
		sprite_index = damaged_sprite;
	} else {
		sprite_index = move_damaged_sprite;
	}
	if audio_is_playing(damaged_sound) {
		audio_stop_sound(damaged_sound);
	}
	audio_play_sound(damaged_sound, 0, false);
} else {
	instance_create_layer(x, y, "Instances", obj_enemy_explosion);
	if audio_is_playing(die_sound) {
		audio_stop_sound(die_sound);
	}
	audio_play_sound(die_sound, 0, false);
	
	if(max_health > 1) {
		visible = false;
		alarm_set(3, 60);
	} else {
		cur_state = enemy_state.DEAD;
	}
}




