/// @description Insert description here
// You can write your code in this editor




image_alpha = clamp(image_alpha + 0.01, 0, 1);
	
if keyboard_check_pressed(ord(key)){
	key_pressed = true
	key_hold = true
}
if keyboard_check_released(ord(key)){
	key_released = true
	key_hold = false
}



//visual effect so that it looks like keys are being pressed!

if key_pressed {
	image_index = 1
}

if key_hold {

	image_index = 1
	
}else if key_released{
	image_index = 0
}

