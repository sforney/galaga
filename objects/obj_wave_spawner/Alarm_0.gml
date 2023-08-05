/// @description Insert description here
if(mixed and number % 2 == 1) {
	spawn_enemy(obj_boss);
} else {
	spawn_enemy(spawn_obj);
}
number--;
if(number == 0) {
	instance_destroy();
} else {
	alarm_set(0, 10);
}





