// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function lock_formation() {
	obj_formation.isLocked = true;	
}

function unlock_formation() {
	obj_formation.isLocked = false;	
}

function formation_translate() {
	if(obj_formation.translate_direction = translate_dir.RIGHT) {
		obj_formation.translate_counter++;	
		for (var i = 0; i < array_length(formation_coords); i += 1) {
			formation_coords[i].x_form += translate_step;
		}
	} else {
		obj_formation.translate_counter--;	
		for (var i = 0; i < array_length(formation_coords); i += 1) {
			formation_coords[i].x_form -= translate_step;
		}
	}
	if(obj_formation.translate_counter == 0) {
		obj_formation.translate_direction = translate_dir.RIGHT;
	} else if(obj_formation.translate_counter == 8) {
		obj_formation.translate_direction = translate_dir.LEFT;	
	}
}

function formation_spread() {
	if(obj_formation.spread_direction == spread_dir.OUT) {
		var cur_slot = -1;
		for (var i = 0; i < rows; i++) {
			for(var j = 0; j < columns; j++) {
				cur_slot = i * columns + j;
				var move_x = abs(j - columns/2) * spread_step;
				var move_y = (i + 1) * spread_step;
				if(j < columns / 2) {
					//spread left side to the left
					formation_coords[cur_slot].x_form -= move_x;
				} else {
					//spread right side to the right
					formation_coords[cur_slot].x_form += move_x;
				}
				formation_coords[cur_slot].y_form += move_y;
			}
		}
		spread_counter++;
	} else {
		//spread in
		var cur_slot = -1;
		for (var i = 0; i < rows; i++) {
			for(var j = 0; j < columns; j++) {
				cur_slot = i * columns + j;
				var move_x = abs(j - columns/2) * spread_step;
				var move_y = (i + 1) * spread_step;
				if(j < columns / 2) {
					//spread left side to the left
					formation_coords[cur_slot].x_form += move_x;
				} else {
					//spread right side to the right
					formation_coords[cur_slot].x_form -= move_x
				}
				formation_coords[cur_slot].y_form -= move_y;
			}
		}	
		spread_counter--;
	}
	if(spread_counter == 0) {
		spread_direction = spread_dir.OUT;
	} else if(spread_counter == spread_max) {
		spread_direction = spread_dir.IN;
	}
}
