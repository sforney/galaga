/// @description Insert description here
// You can write your code in this edit
if(!is_in_formation) {
	sprite_index = spr_bee_hit_move;
} else {
	sprite_index = spr_bee_hit;
}
instance_destroy(other);
alarm_set(0, 4);

