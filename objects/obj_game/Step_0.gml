/// @description Insert description here
// You can write your code in this editor
//Add 2 new stars per tick
for(var i = 0; i < 2; i += 1) {
	instance_create_layer(random(288), random(244), "Instances", obj_star);
}
