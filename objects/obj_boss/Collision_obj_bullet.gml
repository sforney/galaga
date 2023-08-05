/// @description Hit by player
if(!dying) {
	instance_destroy(other);
	sprite_index = spr_boss_hurt_idle;
	alarm_set(0, 3);
}

