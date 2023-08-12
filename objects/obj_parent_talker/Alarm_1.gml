/// @description Insert description here
// You can write your code in this editor
if  instance_exists(obj_tarot_fairy) {
	 //if its the tarot fairy, end the conversation disrupt the dialogue upon finishing it 
	 //begin card game
	instance_destroy(self)
	instance_create_layer(room_width/2,room_height/2, "Instances", obj_tarot_manager)
} else {
	myTextBox = noone
}


// after u finish all that the fairy has to say, return to main room
if convo_part > 0 {
	room_goto(rm_main)
}






