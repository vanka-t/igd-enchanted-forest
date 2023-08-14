/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event

 show_debug_message(room)
if room == rm_final {
	
			if (myTextBox == noone ){
		myTextBox =  instance_create_layer(x,y,"text", obj_textBox)
		myTextBox.text = myText
		myTextBox.creator = self
		myTextBox.name = myName
		}
	
	
} else {
	if (myTextBox != noone){
		instance_destroy(myTextBox)
		myTextBox = noone
	}
	
}

show_debug_message("final room entered: {0}", global.final_room_entered)

if !obj_manager.have_cake {
	if global.final_room_entered == 1{
		myText[0] = "What the hell do you want? Go away"
	} else if global.final_room_entered > 1{
		myText[0] = "You again?? GO. AWAY."
	}
	
} else {
	
	myText[0] = "Is that cake? omg :3"
	myText[1] = "I haven't had one of these in a thousand years!"
	myText[2] = "Fine, fine. Off you go back to your own world, mortal!"
	if keyboard_check_pressed(vk_space){
		message_count +=1
	}
	
}



if message_count == 4 {
	fadeInfadeOut(rm_win, 0.05)
}
