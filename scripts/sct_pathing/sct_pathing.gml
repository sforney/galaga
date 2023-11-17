// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function path_ended(){
	switch(cur_path) {
		case pth_top_attack_left:
		case pth_top_attack_right:
		case pth_incoming:
		case pth_right_side:
		case pth_left_side:
			//make path to formation
			cur_path = path_to_formation(formation_slot);
			path_updated = true;
			break;
		default:
		if(obj_formation.formation_coords[formation_slot].x_form == x &&
			obj_formation.formation_coords[formation_slot].y_form == y) {
			is_in_formation = true;
			obj_formation.contents[formation_slot] = self;
			alarm_set(1, 3);
		}
	}
}

function start_path() {
	path_start(cur_path, 3, path_action_stop, true);
	is_in_formation = false;
}

function path_to_formation(slot) {
	var path = path_add();
	path_set_closed(path, false);
	var path_x = obj_formation.formation_coords[slot].x_form;
	var path_y = obj_formation.formation_coords[slot].y_form;
	path_add_point(path, x, y, 100);
	path_add_point(path, path_x, path_y, 100);
	path_start(path, 3, path_action_stop, true);
	return path;
}

function attack_path() {
	var path = path_add();
	path_set_closed(path, false);
	path_add_point(path, x, y, 100);
	path_add_point(path, x + 16, y + 16, 100);
	path_add_point(path, x + 32, y, 100);
	path_add_point(path, obj_player.x, obj_player.y + 32, 100);
	return path;
}