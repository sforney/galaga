/// @description Rotate into formation
// You can write your code in this editor
var formation_entered = enter_formation();
if(!formation_entered) {
	alarm_set(1, 2);
} else {
	sprite_index = spr_bee_idle;
	image_speed = 1.5;
}



