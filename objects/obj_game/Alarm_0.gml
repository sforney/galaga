/// @description Spawn Attack Wave
// You can write your code in this editor

if(instance_exists(obj_wave_spawner)) {
	instance_destroy(obj_wave_spawner);
}
switch(wave_pattern) {
	case 0:
		spawn_wave(obj_bee, 4, pth_top_attack_right);
		spawn_wave(obj_butterfly, 4, pth_top_attack_left);
		wave_pattern++;
		break;
	case 1:
		spawn_mixed_wave(obj_butterfly, 8, pth_left_side);
		wave_pattern++;
		break;
	case 2:
		spawn_wave(obj_butterfly, 8, pth_right_side);
		wave_pattern++;
		break;
	case 3:
		spawn_wave(obj_bee, 8, pth_top_attack_right);
		wave_pattern++;
		break;
	case 4:
		spawn_wave(obj_bee, 8, pth_top_attack_left);
		wave_pattern++;
		break;
	case 5:
		var rand = irandom(array_length(obj_formation.contents - 1));
		var enemy = obj_formation.contents[rand];
		if(instance_exists(enemy) &&
			variable_instance_exists(enemy, "cur_state")) {
			enemy.cur_state = enemy_state.START_DIVE;
		}
		lock_formation();
		break;
	default:
}
alarm_set(0, 210);
