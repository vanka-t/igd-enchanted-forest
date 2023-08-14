/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
if convo_part == 0{
myText[0] = "I haven't seen you before"
myText[1] = "Would you like a tarot reading? Surely you wont leave the forest without one?"
myText[2] = "allow me to look deep inside your soul"


} else if convo_part> 0 {
	//if good_reading { //picked good cards
		myText[0] = "Based on your combinations, it seems thatyou have been blessed with good fate"
		myText[1] = "The cards never lie"
		myText[2] = "You have my approval"
	//} else {
	//	myText[0] = "My, my... what a tragic ending you will face"
	//	myText[1] = "Staying in our world will do you no good."
	//	myText[2] = "You have my approval, leave as soon as possible!"
		
	}

}

// Inherit the parent event
if room == rm_tarot {
	if convo_part >0 { // automatically start talking once card game is over
		//	if (myTextBox == noone ){
		myTextBox =  instance_create_layer(x,y,"text", obj_textBox)
		myTextBox.text = myText
		myTextBox.creator = self
		myTextBox.name = myName
		//}
	}else if keyboard_check_pressed(vk_space){ 
		message_count+=1
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


if message_count > 5 {
	if !instance_exists(obj_tarot_manager){
		instance_create_layer(room_width/2,room_height- 200, "cards", obj_tarot_manager)
	}
	message_count = 0
}