/// @description Insert description here
// You can write your code in this editor



//sound cake 
//draw banner -> maybe in draw event of cake
global.have_cake = true
instance_activate_object(obj_banner)
	obj_banner.image_index = 2
	
	//deactivate everything
	alarm[1] = room_speed *3