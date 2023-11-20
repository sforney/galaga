// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @param {Asset.GMSprite} sprite The object's sprite sheet
function animate_enemy(sprite) {
	var angle = direction;
	image_speed = 0; //disable animation
	sprite_index = sprite;
	if(angle > 0 and angle < 180) {
		image_yscale = 1;
		if(image_angle > 0 and image_angle < 7.5) {
			image_index = 12;
		} else if(angle >= 7.5 and angle < 22.5) {
			image_index = 11;
		} else if(angle >= 22.5 and angle < 37.5) {
			image_index = 10;
		} else if(angle >= 37.5 and angle < 52.5) {
			image_index = 9;
		} else if(angle >= 52.5 and angle < 67.5) {
			image_index = 8;
		} else if(angle >= 67.5 and angle < 82.5) {
			image_index = 7;
		} else if(angle >= 82.5 and angle < 97.5) {
			image_index = 6;
		} else if(angle >= 97.5 and angle < 112.5) {
			image_index = 5;
		} else if(angle >= 112.5 and angle < 127.5) {
			image_index = 4;
		} else if(angle >= 127.5 and angle < 142.5) {
			image_index = 3;
		} else if(angle >= 142.5 and angle < 157.5) {
			image_index = 2;
		} else if(angle >= 157.5 and angle < 172.5) {
			image_index = 1;
		} else if(angle >= 172.5 and angle < 180) {
			image_index = 0;
		}
	} else if(angle >= 180 and angle < 360) {
		image_yscale = -1;	
		if(angle >= 180 and angle < 187.5) {
			image_index = 0;
		} else if(angle >= 187.5 and angle < 202.5) {
			image_index = 1;
		} else if(angle >= 202.5 and angle < 217.5) {
			image_index = 2;
		} else if(angle >= 217.5 and angle < 232.5) {
			image_index = 3;
		} else if(angle >= 232.5 and angle < 247.5) {
			image_index = 4;
		} else if(angle >= 247.5 and angle < 262.5) {
			image_index = 5;
		} else if(angle >= 262.5 and angle < 277.5) {
			image_index = 6;
		}  else if(angle >= 277.5 and angle < 292.5) {
			image_index = 7;
		}  else if(angle >= 292.5 and angle < 307.5) {
			image_index = 8;
		}  else if(angle >= 307.5 and angle < 322.5) {
			image_index = 9;
		}  else if(angle >= 322.5 and angle < 337.5) {
			image_index = 10;
		}  else if(angle >= 337.5 and angle < 352.5) {
			image_index = 11;
		}  else if(angle >= 352.5 and angle < 360) {
			image_index = 12;
		} 
	}
}

/// Rotates an enemy ship towards 90 degrees
function enter_formation() {
	//cur_state = enemy_state.FORMATION;
	x = obj_formation.formation_coords[formation_slot].x_form;
	y = obj_formation.formation_coords[formation_slot].x_form;
	var center_image = 6;
	
	if(image_index < center_image) {
		image_index++;
	} else if(image_index > center_image) {
		image_index--;
	}
	return image_index == center_image;
}

function dive_path_create(reverse) {
	var path = path_add();
	path_set_kind(path, 1);
	path_set_closed(path, false);
	path_add_point(path, x, y, 100);
	if(reverse == true) {
		path_add_point(path, x + 32, y - 32, 100);
		path_add_point(path, x + 64, y, 100);
	} else {
		path_add_point(path, x - 32, y - 32, 100);
		path_add_point(path, x - 64, y, 100);
	}
	alarm_set(2, 18);
	alarm_set(4, 36);
	path_add_point(path, obj_player.x, obj_player.y + 32, 100);
	cur_path = path;
	obj_formation.contents[formation_slot] = -1;
	path_start(path, 3, path_action_stop, true);	
}
