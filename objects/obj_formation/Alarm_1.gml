/// @description Insert description here
// You can write your code in this editor
if(!isLocked || translate_counter != 4) {
	formation_translate();
	alarm_set(1, translate_timer);
} else {
	formation_spread();
	alarm_set(1, spread_delay);
}








