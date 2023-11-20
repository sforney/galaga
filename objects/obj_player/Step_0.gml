/// @description Insert description here
// You can write your code in this editor
if(cur_state == player_state.ALIVE) {
	if keyboard_check(vk_left) {
		x -= 2;
	} else if keyboard_check(vk_right) {
		x += 2;
	}

	x = clamp(x, 8, room_width - 8); 
	y = clamp(y, 0, room_height); 
}
