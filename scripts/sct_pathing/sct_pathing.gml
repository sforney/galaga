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
			break;
		default:
			x = obj_formation.formation_coords[formation_slot].x_form;
			y = obj_formation.formation_coords[formation_slot].y_form;
			cur_state = enemy_state.FORMATION;
			obj_formation.contents[formation_slot] = self;
			alarm_set(1, 3);
	}
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