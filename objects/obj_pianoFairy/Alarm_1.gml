/// @description Insert description here
// You can write your code in this editor








// Inherit the parent event
event_inherited();

//convo_part += 1
// after u finish all that the fairy has to say, return to main room
if convo_part > 0 {
	room_goto(rm_main)
}