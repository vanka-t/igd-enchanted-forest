/// @description Insert description here
// You can write your code in this editor
depth = -1000
image_index = 0
image_speed = 1
//show_debug_message("FACE INDEX: {0}" , obj_tarot_manager.player_face_up[| 0].face_index)
//randomize();


//add them to the same list? the order doesnt matter
//player winning
if ( obj_tarot_manager.player_face_up[| 0].face_index == 1 and  obj_tarot_manager.player_face_up[| 1].face_index == 0)
	or ( obj_tarot_manager.player_face_up[| 0].face_index == 0 and  obj_tarot_manager.player_face_up[| 1].face_index == 1){                                                               
	//SUN + FOOL = GOOD
	sprite_index = spr_sun_fool
	obj_tarot_manager.player_score +=1
} else if ( obj_tarot_manager.player_face_up[| 0].face_index == 0 and  obj_tarot_manager.player_face_up[| 1].face_index == 2)
or ( obj_tarot_manager.player_face_up[| 0].face_index == 2 and  obj_tarot_manager.player_face_up[| 1].face_index == 0){
	// FOOL + ACE = BAD
	sprite_index = spr_fool_ace
	obj_tarot_manager.comp_score +=1
} else if (obj_tarot_manager.player_face_up[| 0].face_index == 2 and  obj_tarot_manager.player_face_up[| 1].face_index == 1 )
	or (obj_tarot_manager.player_face_up[| 0].face_index == 1 and  obj_tarot_manager.player_face_up[| 1].face_index == 2 ){
	//SUN+ ACE = BAD
	sprite_index = spr_ace_sun
	obj_tarot_manager.comp_score +=1
} else if (obj_tarot_manager.player_face_up[| 0].face_index == 1 and  obj_tarot_manager.player_face_up[| 1].face_index == 1 ){
	//SUN + SUN = GOOD
	sprite_index = spr_sun_sun
	obj_tarot_manager.player_score +=1
}else if ( obj_tarot_manager.player_face_up[| 0].face_index == 2 and  obj_tarot_manager.player_face_up[| 1].face_index == 2){
	//ACE+ ACE = BAD
	sprite_index = spr_ace_ace
	obj_tarot_manager.comp_score +=1
} else if (obj_tarot_manager.player_face_up[| 0].face_index == 0 and  obj_tarot_manager.player_face_up[| 1].face_index == 0 ){
	//FOOL+ FOOL = BAD
	sprite_index = spr_fool_fool
	obj_tarot_manager.comp_score +=1
} 




					
