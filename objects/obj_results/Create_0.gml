/// @description Insert description here
// You can write your code in this editor


depth = -1000
image_speed = 1
if (obj_tarot_manager.player_score > obj_tarot_manager.comp_score) {
	image_index = 0 //win
	obj_tarot_fairy.good_reading = true
	
} else if (obj_tarot_manager.player_score < obj_tarot_manager.comp_score) {
image_index = 1 //lost
//obj_tarot_fairy.good_reading = true
} else {
	image_index = 0 //draw
	obj_tarot_fairy.good_reading = true
}