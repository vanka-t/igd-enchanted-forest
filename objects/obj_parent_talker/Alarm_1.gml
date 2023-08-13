/// @description Insert description here
// You can write your code in this editor



// after u finish all that the fairy has to say, return to main room
if convo_part > 0 {
	room_goto(rm_main)
}

if instance_exists(obj_finalBoss) && !obj_manager.have_cake{
	room_goto(rm_main)
}





