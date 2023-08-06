/// @description Hit by player
if(!dying) {
	instance_destroy(other);
	if(is_in_formation) {
		sprite_index = spr_boss_hurt_idle;
	} else {
		sprite_index = spr_boss_damaged_move;
	}
	alarm_set(0, 3);
}

