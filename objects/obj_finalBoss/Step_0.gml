/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event

 show_debug_message(room)
if room == rm_final {
	if keyboard_check_pressed(vk_space){
			if (myTextBox == noone ){
		myTextBox =  instance_create_layer(x,y,"text", obj_textBox)
		myTextBox.text = myText
		myTextBox.creator = self
		myTextBox.name = myName
		}
	}
	
} else {
	if (myTextBox != noone){
		instance_destroy(myTextBox)
		myTextBox = noone
	}
	
}

if !have_cake {
	if global.final_room_entered > 0{
		myText[0] = "What the hell do you want? Go away"
	} else {
		myText[0] = "You again?? GO. AWAY."
	}
	
}