/// @param {Asset.GMObject} enemy The enemy to spawn
/// @param {Asset.GMPath} path The path to assign to the enemy
/// @return {Id.Instance} Returns the created enemy
function spawn_enemy(enemy){
	var slot = get_next_slot(enemy); 
	var instance = instance_create_layer(x, y, "Instances", enemy, {cur_path : path, formation_slot : slot});
	obj_game.enemies[slot] = instance;
	return instance;
}

/// @param {Asset.GMObject} enemy_type The enemy to spawn
function get_next_slot(enemy_type) {
	var result;
	switch(enemy_type) {
		case obj_bee:
			result = obj_game.bee_slots[obj_game.bee_index];
			obj_game.bee_index++;
			if(obj_game.bee_index >= array_length(obj_game.bee_slots)) { obj_game.bee_index = 0;}
			break;
		case obj_butterfly:
			result =  obj_game.butterfly_slots[obj_game.butterfly_index];
			obj_game.butterfly_index++;
			if(obj_game.butterfly_index >= array_length(obj_game.butterfly_slots)) { obj_game.butterfly_index = 0;}
			break;
		case obj_boss:
			result =  obj_game.boss_slots[obj_game.boss_index];
			obj_game.boss_index++;
			if(obj_game.boss_index >= array_length(obj_game.boss_slots)) { obj_game.boss_index = 0;}
			break;
		default:
	}
	return result;
}