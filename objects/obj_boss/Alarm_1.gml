/// @description Enter formation
// You can write your code in this editor
var formation_entered = enter_formation();
if(!formation_entered) {
	alarm_set(1, 2);
} else {
	if(damaged) {
		sprite_index = spr_boss_damaged_idle;
	} else {
		sprite_index = spr_boss_idle;
	}
	image_speed = 1.5;
}

