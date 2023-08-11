/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
if room == rm_tarot {
	if keyboard_check_pressed(vk_space){
			if (myTextBox == noone ){
		myTextBox =  instance_create_layer(x,y,"text", obj_textBox)
		myTextBox.text = myText
		myTextBox.creator = self
		myTextBox.name = myName
		
		}
		
		if myTextBox.count > 0 {
			instance_destroy(self)
		}
	}
	
} else {
	if (myTextBox != noone){
		
		instance_destroy(myTextBox)
		
		
		myTextBox = noone
		instance_destroy(self)
	}
	
} 