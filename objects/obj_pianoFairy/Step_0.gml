/// @description Insert description here
// You can write your code in this editor





//show_debug_message("Convo part: {0}", convo_part)
//show_debug_message("My text box: ",textbox)
//if convo_part == 0{
myText[0] = "Hi there, kind soul."
myText[1] = "If you would like to leave our forest, first you must show me you have what it takes"
myText[2] = "Play me a beautiful melody, and I'll hand you the key!"
myText[3] = "use keys A  S  D   F   G   H   I   J   K"
//} else  if convo_part > 0{
	myText2[0] = "Wow, you did it!"
	myText2[1] = "You are a true musician"
	myText2[2] = "You have my approval"
	myText2[3] = "If you haven't already, try to find my friend "

//}

// Inherit the parent event
if room == rm_piano_new {
	if convo_part >0 { // automatically start talking once piano is finished playing
		//	if (myTextBox == noone ){
		
		myTextBox =  instance_create_layer(x,y,"text", obj_textBox)
		myTextBox.text = myText2
		myTextBox.creator = self
		myTextBox.name = myName
		
		myTextBox.y_pos = room_height - 200

		//}
	}else if keyboard_check_pressed(vk_space){ 
			message_count += 1
			if (myTextBox == noone ){
			
		myTextBox =  instance_create_layer(x,y,"text", obj_textBox)
		myTextBox.text = myText
		myTextBox.creator = self
		myTextBox.name = myName
		myTextBox.y_pos = room_height - 200
		//myTextBox.boxWidth  = room_width
		}
	}
	
} else {
	if (myTextBox != noone){
		instance_destroy(myTextBox)
		myTextBox = noone
	}
	
}


if message_count > 5 {
	instance_activate_layer("keyboard")
	instance_activate_layer("piano_black")
	
	if !instance_exists(obj_piano){
		instance_create_layer(room_width/2,room_height- 200, "Instances", obj_piano)
		
	}
	message_count = 0
}