/// @description Rotate into formation
// You can write your code in this editor
var formation_entered = enter_formation();
if(!formation_entered) {
	alarm_set(1, 2);
} else {
	if(self.health == max_health) {
		sprite_index = idle_sprite;
	} else {
		sprite_index = damaged_sprite;
	}
	image_speed = 1.5;
}





