/// @description Insert description here
// You can write your code in this editor

hspd = ((right - left) *spd);
vspd = ((down-up)*spd);



	if hspd !=0 { 
	if !collision_point(x+hspd,y,obj_collision,true,true){
		if !collision_point(x+hspd,y,obj_door,true,true){
			x+= hspd;
		}
	}
}


if (vspd ==0) {
	//v
}
if vspd !=0 {
	if !collision_point(x,y+vspd,obj_collision,true,true){
		if !collision_point(x,y+vspd,obj_door,true,true){
			
			y+= vspd;
		
		}	
	}	

}

move_wrap(true,true,sprite_height/2)


	
if keyboard_check_pressed(ord("A")){
	sprite_index = spr_ply_right
	image_xscale = -1
	L_pressed = true
	L_hold = true
}
if keyboard_check_released(ord("A")){
	sprite_index = spr_ply_idle
	L_released = true
	L_hold = false
}
if keyboard_check_pressed(ord("D")){
	sprite_index = spr_ply_right
	image_xscale = 1
	R_pressed = true
	R_hold = true
}
if keyboard_check_released(ord("D")){
	sprite_index = spr_ply_idle
	R_released = true
	R_hold = false
}

if keyboard_check_pressed(ord("W")){
	sprite_index = spr_ply_up
	Up_pressed = true
	Up_hold = true
}
if keyboard_check_released(ord("W")){
	sprite_index = spr_ply_idle
	Up_released = true
	Up_hold = false
}

if keyboard_check_pressed(ord("S")){
	sprite_index = spr_ply_down
	Down_pressed = true
	Down_hold = true
}
if keyboard_check_released(ord("S")){
	sprite_index = spr_ply_idle
	Down_released = true
	Down_hold = false
}

if R_hold {
	right = 1
	//sprite_index = spr_ply_right
	
}else if R_released{
	right = 0
	//sprite_index = spr_ply_idle
}

if L_hold {
	left = 1
	//sprite_index = spr_ply_right
	//image_xscale = -1

}else if L_released{
	left = 0
	//sprite_index = spr_ply_idle
	//image_xscale = 1
}

if Up_hold {
	up = 1
	//sprite_index = spr_ply_up
	
}else if Up_released{
	up = 0
	//sprite_index = spr_ply_idle
}
//down
if Down_hold {
	down = 1
	sprite_index = spr_ply_down
	
}else if Down_released{
	down = 0
	//sprite_index = spr_ply_idle
}


//if !collision_point(x,y+vspd,obj_npc1,true,true) or !collision_point(x+hspd,y,obj_npc1,true,true){
	//instance_deactivate_object(obj_message)
//} else {
//	if keyboard_check_pressed(vk_space){
//		instance_create_layer(obj_npc1.x,obj_npc1.y-100, "text", obj_textBox)
//		//instance_activate_object(obj_message)
//	}
//}

