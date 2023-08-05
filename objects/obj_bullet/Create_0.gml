/// @description Insert description here
// You can write your code in this editor
speed = 5;
direction = 90;
if !audio_is_playing(snd_player_fire) {
	audio_play_sound(snd_player_fire, 0, false);
}