/// @description Insert description here
// You can write your code in this editor
enemies = array_create(50, -1);
butterfly_slots = [14, 15, 24, 25, 13, 23, 16, 26, 12, 22, 17, 27, 11, 21, 18, 28, 10, 20, 19, 29];
bee_slots = [34, 35, 44, 45, 33, 43, 36, 46, 32, 42, 37, 47, 31, 41, 38, 48, 30, 40, 39, 49];
boss_slots = [4, 5, 3, 6];
lives = 3;

draw_set_font(fnt_joystix);
instance_create_layer(0, 0, "Instances", obj_game_start);
alarm_set(0, 540);