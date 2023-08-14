/// @description Insert description here
// You can write your code in this editor




hspd = ((right - left) *spd);
vspd = ((down-up)*spd);
	//if !audio_is_playing(snd_intro){
	//	audio_play_sound(snd_intro, 10, true)
	//}
	
if hspd !=0 { 
	if !collision_point(x+hspd,y,obj_collision,true,true){
	x+= hspd;
	}
}


//if moving 
if vspd !=0 {
	if !collision_point(x,y+vspd,obj_collision,true,true){
	y+= vspd;

	}
}
//	move_wrap(true,true,sprite_width)



//ENTER SEQUENCE
if collision_point(x+hspd,y,obj_interact_intro,true,true) { 
	if keyboard_check_pressed(vk_space){
	//go to main?
		
	}
	
}

	
if keyboard_check_pressed(vk_left){
	sprite_index = spr_ply_intro
	image_xscale = -1
	L_hold = true
}
if keyboard_check_released(vk_left){
	L_released = true
	L_hold = false
}
if keyboard_check_pressed(vk_right){
	sprite_index = spr_ply_intro
	image_xscale = 1
	R_hold = true
}
if keyboard_check_released(vk_right){
	R_released = true
	R_hold = false
}

if keyboard_check_pressed(vk_space){
//interact
}

if R_hold {

	right = 1
	
}else if R_released{
	right = 0
}

if L_hold {
	
	left = 1

}else if L_released{
	left = 0
}




if fall {
	//audio play sound (fall)
	y+=5;
	//global.x = x
	if y >= 1300 {
		x = obj_manager.start_x_pos
		//landing sound
		sprite_index = spr_ply_down //landing sprite gif
		///if image_index == x {
		//sprite_index = spr_ply_idle
		//}
		room_goto(rm_main)
		
	}
}
