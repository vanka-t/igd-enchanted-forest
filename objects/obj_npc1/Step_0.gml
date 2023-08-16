

event_inherited()

//cam_x = camera_get_view_x(view_camera[1])
//cam_y  = camera_get_view_height(view_camera[1])
//myTextBox.x_pos = cam_x
//myTextBox.y_pos = cam_y




if place_meeting(x,y,obj_ply) {
	if keyboard_check_pressed(vk_space){
			if (myTextBox == noone ){
		myTextBox =  instance_create_layer(x,y,"text", obj_textBox)
		myTextBox.text = myText
		myTextBox.creator = self
//		myTextBox.name = myName
		var cam_x = camera_get_view_x(view_camera[1])
	//	var cam_y = camera_get_view_y(view_camera[1])
		myTextBox.x_pos = cam_x
		//myTextBox.y_pos = y+200
			}
		}
	}
	
	