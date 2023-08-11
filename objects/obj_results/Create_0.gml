/// @description Insert description here
// You can write your code in this editor


depth = -1000
image_speed = 0
if (obj_tarot_manager.player_score > obj_tarot_manager.comp_score) {
	image_index = 0 //win
} else if (obj_tarot_manager.player_score < obj_tarot_manager.comp_score) {
image_index = 1 //lost
} else {
	image_index = 2 //draw
}