// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function lock_formation() {
	obj_formation.isLocked = true;	
}

function unlock_formation() {
	obj_formation.isLocked = false;	
}

function formation_translate() {
	if(!obj_formation.isLocked || obj_formation.translate_counter != 0) {
		if(obj_formation.translate_counter == obj_formation.translate_max) {
			obj_formation.translate_direction = translate_dir.LEFT;
			obj_formation.translate_counter--;
		} else if (obj_formation.translate_counter == 0) {
			obj_formation.translate_direction = translate_dir.RIGHT;
			obj_formation.translate_counter++;
		} else if(obj_formation.translate_direction = translate_dir.RIGHT) {
			obj_formation.translate_counter++;	
		} else {
			obj_formation.translate_counter--;	
		}
	}
}

/*
function move_enemy_in_formation(value, index) {
	if(value != undefined) {
		if(translate_direction == "right") {		
			value.x += translate_step;
		} else {
			value.x -= translate_step;
		}
	}
}
*/

function move_formation_paths(value, index) {
	if(value != -1 &&
		!value.is_in_formation &&
		!asset_has_tags(value.cur_path, "incoming", asset_path)) {
		value.cur_path = path_to_formation(value.formation_slot);
		value.path_updated = true;
	}
}
