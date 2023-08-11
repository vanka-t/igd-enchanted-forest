/// @description Insert description here
// You can write your code in this editor

depth = -1000


//player winning
if (obj_tarot_manager.player_face_up[| 0].face_index == 1 and  obj_tarot_manager.comp_card.face_index == 0 ){
	sprite_index = spr_sun
}else if ( obj_tarot_manager.player_face_up[| 0].face_index == 0 and  obj_tarot_manager.comp_card.face_index == 2){
	sprite_index = spr_fool
} else if (obj_tarot_manager.player_face_up[| 0].face_index == 2 and  obj_tarot_manager.comp_card.face_index == 1 ){
	sprite_index = spr_lovers
}

//comp winning
if (obj_tarot_manager.player_face_up[| 0].face_index == 0 and  obj_tarot_manager.comp_card.face_index == 1 ){
	sprite_index = spr_sun
}else if ( obj_tarot_manager.player_face_up[| 0].face_index == 2 and  obj_tarot_manager.comp_card.face_index == 0){
	sprite_index = spr_fool
} else if (obj_tarot_manager.player_face_up[| 0].face_index == 1 and  obj_tarot_manager.comp_card.face_index == 0 ){
	sprite_index = spr_lovers
}

//draw
if (obj_tarot_manager.player_face_up[| 0].face_index ==  obj_tarot_manager.comp_card.face_index ){
	sprite_index = spr_draw
}

					
