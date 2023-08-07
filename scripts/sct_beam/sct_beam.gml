// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @param {Real} beam_step The length of the beam, from 1-10
function extend_beam(beam_step){
	draw_sprite_part(sprite_index, image_index, 0, 0, 48,
		beam_step * 8, x, y);
}