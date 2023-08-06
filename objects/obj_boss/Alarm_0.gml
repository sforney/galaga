/// @description Damage or destroy
if !damaged {
	if(is_in_formation) {
		sprite_index = spr_boss_damaged_idle;
	} else {
		sprite_index = spr_boss_damaged_move;
	}
	damaged = true;
	if audio_is_playing(snd_boss_hit) {
		audio_stop_sound(snd_boss_hit);
	}
	audio_play_sound(snd_boss_hit, 0, false);
} else {
	instance_create_layer(x, y, "Instances", obj_enemy_explosion);
	if audio_is_playing(snd_boss_die) {
		audio_stop_sound(snd_boss_die);
	}
	audio_play_sound(snd_boss_die, 0, false);
	visible = false;
	alarm_set(3, 60);
	dying = true;
}

