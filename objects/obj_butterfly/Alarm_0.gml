/// @description Insert description here
// You can write your code in this editor
instance_destroy();
if audio_is_playing(snd_butterfly_die) {
	audio_stop_sound(snd_butterfly_die);
}
audio_play_sound(snd_butterfly_die, 0, false);
instance_create_layer(x, y, "Instances", obj_enemy_explosion)



