/// @description Insert description here
// You can write your code in this editor
contents = array_create(50, undefined);
formation_coords = array_create(50, undefined);
//initialize the formation coordinates
var x_formation_start = 45
var y_formation_start = 36
for(i = 0; i < 5; i++) {
	for(j = 0; j < 10; j++) {
		formation_coords[i * 10 + j] = 
		{"x_form": x_formation_start + (17*j),
			"y_form": y_formation_start + (17*i)};
	}
}
alarm_set(0, 5);


