/// @description Insert description here
// You can write your code in this editor
if(self.health > 0) {
	if(self.health == max_health) {
		animate_enemy(move_sprite);
	} else {
		animate_enemy(move_damaged_sprite);
	}
}
