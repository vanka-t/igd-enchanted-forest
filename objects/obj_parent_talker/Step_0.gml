/// @description Insert description here
// You can write your code in this editor



if place_meeting(x,y,obj_ply) {
	
	if keyboard_check_pressed(vk_space){
			if (myTextBox == noone ){
					
		
		myTextBox =  instance_create_layer(0 ,0,"text", obj_textBox)
		cam_x = camera_get_view_x(view_camera[1])
		cam_y  = camera_get_view_height(view_camera[1])// +150
		myTextBox.x_pos = cam_x
		myTextBox.y_pos = cam_y

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



