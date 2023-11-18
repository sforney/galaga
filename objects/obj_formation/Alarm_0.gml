/// @description Update Global Idle Frame
if(idle_frame == 0) {
	idle_frame = 1;
} else {
	idle_frame = 0;
}
//reset alarm
alarm_set(0, 40);
