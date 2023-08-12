// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// Rotates an enemy ship towards 90 degrees
function enter_formation() {
	var center_image = 6;
	
	if(image_index < center_image) {
		image_index++;
	} else if(image_index > center_image) {
		image_index--;
	}
	return image_index == center_image;
}

function formation_move(value, index) {
	if(value != undefined) {
		if(translate_direction == "right") {
			value.x_form += translate_step;
		} else {
			value.x_form -= translate_step;
		}
	}
}

function move_enemy_in_formation(value, index) {
	if(value != undefined) {
		if(translate_direction == "right") {		
			value.x += translate_step;
		} else {
			value.x -= translate_step;
		}
	}
}

function move_formation_paths(value, index) {
	if(value != -1 && !value.is_in_formation && !asset_has_tags(value.cur_path, "incoming", asset_path)) {
		value.path_updated = true;
	}
}