/// @description Insert description here
// You can write your code in this editor

depth = -1000
show_debug_message("FACE INDEX: {0}" , obj_tarot_manager.player_face_up[| 0].face_index)
randomize();
//player winning
if ( obj_tarot_manager.player_face_up[| 0].face_index == 1 and  obj_tarot_manager.player_face_up[| 1].face_index == 0){                                                               
	sprite_index = spr_sun_fool
	obj_tarot_manager.player_score +=1
} else if ( obj_tarot_manager.player_face_up[| 0].face_index == 0 and  obj_tarot_manager.player_face_up[| 1].face_index == 2){
	sprite_index = spr_fool_lovers
	obj_tarot_manager.player_score +=1
} else if (obj_tarot_manager.player_face_up[| 0].face_index == 2 and  obj_tarot_manager.player_face_up[| 1].face_index == 1 ){
	sprite_index = spr_lovers_sun
	obj_tarot_manager.player_score +=1
} else{
	sprite_index = spr_lovers_sun
	obj_tarot_manager.player_score +=1
}

//comp winning
if (obj_tarot_manager.player_face_up[| 0].face_index == 0 and  obj_tarot_manager.player_face_up[| 1].face_index == 1 ){
	sprite_index = spr_sun_fool
	obj_tarot_manager.comp_score +=1
}else if ( obj_tarot_manager.player_face_up[| 0].face_index == 2 and  obj_tarot_manager.player_face_up[| 1].face_index == 0){
	sprite_index = spr_fool_lovers
	obj_tarot_manager.comp_score +=1
} else if (obj_tarot_manager.player_face_up[| 0].face_index == 1 and  obj_tarot_manager.player_face_up[| 1].face_index == 2 ){
	sprite_index = spr_lovers_sun
	obj_tarot_manager.comp_score +=1
} else{
	sprite_index = choose(spr_sun_fool, spr_lovers_sun, spr_fool_lovers)
	obj_tarot_manager.comp_score +=1
}

//draw
if (obj_tarot_manager.player_face_up[| 0].face_index ==  obj_tarot_manager.player_face_up[| 1].face_index ){
	sprite_index = spr_draw

}

					
