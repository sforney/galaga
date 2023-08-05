/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_red) //sets the color
draw_text(25, 10, "1UP");
draw_text(120, 10, "HIGH SCORE");
draw_set_color(c_white);
draw_text(25, 20, score);
draw_text(120, 20, "20000");
for(i = 0; i < lives - 1; i++) {
	draw_sprite(spr_player_ship, -1, 15 + (16 * i), 278);
}
draw_sprite(spr_stage_marker_1, -1, 220, 270);



