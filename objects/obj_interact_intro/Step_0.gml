/// @description Insert description here
// You can write your code in this editor
/*
event_inherited()

if place_meeting(x,y,obj_ply_intro)  {
	
	
			if (myTextBox == noone ){
					
		
		myTextBox =  instance_create_layer(0 ,0,"text", obj_textBox)
		cam_x =  camera_get_view_x(view_camera[1])
		cam_y  =0// camera_get_view_height(view_camera[1])// +150
		myTextBox.x_pos = cam_x  + 250
		myTextBox.y_pos = cam_y + 50

		myTextBox.text = myText
		myTextBox.creator = self
		myTextBox.name = myName
		}
	

	
}
