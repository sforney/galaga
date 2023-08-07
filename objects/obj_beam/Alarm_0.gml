/// @description Insert description here
// You can write your code in this editor
if(extending) {
	beam_step++;
} else {
	beam_step--;
}

if(beam_step > 10) {
	beam_step = 10;
	extending = false;
	retracting = true;
	alarm_set(0, 60);
} else if(beam_step == 0) {
	instance_destroy();
} else {
	alarm_set(0, 12);
}

