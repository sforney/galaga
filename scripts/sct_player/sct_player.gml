// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_destroy(){
	cur_state = player_state.DYING;
	if !audio_is_playing(snd_player_die) {
		audio_play_sound(snd_player_die, 0, false);
	}
	sprite_index = spr_player_death;
	image_speed = 1;
}