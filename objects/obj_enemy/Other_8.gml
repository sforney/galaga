/// @description Insert description here
// You can write your code in this editor
if(cur_state = enemy_state.DIVE) {
	instance_destroy(self);	
}
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
		path_delete(cur_path);
		x = obj_formation.formation_coords[formation_slot].x_form;
		y = obj_formation.formation_coords[formation_slot].y_form;
		cur_state = enemy_state.FORMATION;
		obj_formation.contents[formation_slot] = self;
		alarm_set(1, 3);
}









