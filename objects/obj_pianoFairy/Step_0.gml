/// @description Insert description here
// You can write your code in this editor





show_debug_message(convo_part)
if convo_part == 0{
myText[0] = "Hi there, kind soul."
myText[1] = "If you would like to leave our forest, first you must show me you have what it takes"
myText[2] = "Play me a beautiful melody, and I'll hand you the key!"
myText[3] = "use keys A  S  D   F   G   H   I   J   K"
} else  {
	myText[0] = "Wow, you did it!"
	myText[1] = "You are a true musician"
	myText[2] = "You have my approval"
	myText[3] = "If you haven't already, try to find my friend "

}

// Inherit the parent event
if room == rm_piano {
	if convo_part >0 {
			if (myTextBox == noone ){
		myTextBox =  instance_create_layer(x,y,"text", obj_textBox)
		myTextBox.text = myText
		myTextBox.creator = self
		myTextBox.name = myName
		}
	}else if keyboard_check_pressed(vk_space){
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