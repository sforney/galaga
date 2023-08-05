/// @description Fire
//Classic Galaga only allows 2 bullets on the screen at once
if instance_number(obj_bullet) < 2 {
	instance_create_layer(x, y - 4, "Instances", obj_bullet)
}
