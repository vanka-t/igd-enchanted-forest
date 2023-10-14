/// @description Insert description here
// You can write your code in this editor

if audio_is_playing(snd_theme){
	audio_pause_sound(snd_theme)
}

image_speed =1
//if !audio_is_playing(snd_bg){
//	audio_play_sound(snd_bg,0,false)
//}

//ad beginning state w textbox here?
switch(state)
{
//	case state_intro:
//	if !instance_exists(obj_tarot_fairy){
//			instance_create_layer(room_width/2, room_height/2, "test", obj_tarot_fairy)
//			show_debug_message( global.finished)
			
//		}
//		if global.finished = true {
//				instance_destroy(obj_tarot_fairy)
//				state = state_deal
//			}
//	break;
	
	
	case state_deal:
	//instance_activate_layer("cards")
	
	if(move_timer == 0)
		{
			//check how many cards are in the player's hand
			var _player_num = ds_list_size(player_hand);
			
			//if it's less than 4
			if(_player_num < 6)
			{
				audio_play_sound(snd_flip, 0 ,false)
				//var _dealt_card = deck[| ds_list_size(deck) - 1];
				var _dealt_card = ds_list_find_value(deck, ds_list_size(deck) - 1);
				//remove the card from the deck
				ds_list_delete(deck, ds_list_size(deck) - 1);
				//add it to the player's hand
				ds_list_add(player_hand, _dealt_card);
				//set the card's taget positon in the player's hand area
				scr_set_pos(_dealt_card, room_width/4 + _player_num * hand_x_offset, room_height *0.4);
				//let the card know it's now in the player's hand
				_dealt_card.in_player_hand = true;
			} else{
				//once the player has 4 cards, go to the match state
				state = state_match;
			}
		}

		
		
		break;
	case state_match:
		show_debug_message(state);
		if(ds_list_size(player_face_up) == 2)
		{
			wait_timer++;
			if(wait_timer >= 60)
			{
	show_debug_message("player_face_up[| 0].face_index: {0} ",player_face_up[| 0].face_index)
			show_debug_message("player_face_up[| 1].face_index: {0}",player_face_up[| 1].face_index)
			
				//go to the compare state
				state = state_compare;
			}
			
		}
		
		
		break;
	case state_compare:
		show_debug_message(state);
		wait_timer++;
		show_debug_message("Wait timer: {0}", wait_timer)
		
		//wait 30 frames to let the player see their selection
		if(wait_timer >= 120)
		{
			//instance_activate_layer("results")
			
			
			//if((player_face_up[| 0].face_index == 1 and  player_face_up[| 1].face_index == 0) or 
			//	(player_face_up[| 0].face_index == 0 and  player_face_up[| 1].face_index == 2) or 
			//	(player_face_up[| 0].face_index == 2 and  player_face_up[| 1].face_index == 1) )
			//	{
				//go to the clean up state
				//player_score +=1 //good ending
				
				
			//} 
			 
			//else if (player_face_up[| 0].face_index == 0 and  player_face_up[| 1].face_index == 1 or
			//	player_face_up[| 0].face_index == 2 and  player_face_up[| 1].face_index == 0 or 
			//	player_face_up[| 0].face_index == 1 and  player_face_up[| 1].face_index == 2 )
			//{
				//obj_big_card.sprite_index = spr_sun
				//comp_score +=1 
		} else{
				 //good ending
				//obj_big_card.sprite_index = spr_draw
			//	player_score +=1 
			//	comp_score +=1 
			//}
				instance_create_layer(room_width/2, room_height/2, "results", obj_big_card)
				obj_big_card.image_speed =1
				//if the cards do not match, flip them back over
				player_face_up[| 0].face_up = false;
				player_face_up[| 1].face_up = false;
				
				
				
				//return to the match state
				state = state_match;
		}
		
			if (wait_timer >= 300){
					//instance_deactivate_layer("results")
					instance_destroy(obj_big_card)
					//clear the selected card list
				//ds_list_clear(player_face_up);
					state = state_clean;
					wait_timer = 0;
				}
			//if mouse_check_button_pressed(mb_left){
				
				//}
			//reset the wait timer
			
		
		break;
	case state_clean:
		show_debug_message(state);
		wait_timer++;
		
		//wait to let the player see their selection
		//and wait between moving cards
		if(wait_timer >= 15 && move_timer == 0)
		{
			
			audio_play_sound(snd_flip, 0 ,false)
			
			//discard comp cards
			var remaining_player_hand = ds_list_size(player_hand);
			
				//if the player's hand is empty
				if(remaining_player_hand > 0)
				{
						var return_card = player_hand[| remaining_player_hand - 1];
				//set the target position and depth of the card
				scr_set_pos(return_card, room_width - 100, y - (ds_list_size(discard) * 2));
				return_card .target_depth = -ds_list_size(discard);
				
				//if the card is face up, flip it back over
				if(return_card.face_up)
				{
					return_card.face_up = false;
				}
				
				//tell the card that it's not in the hand
				return_card.in_player_hand = false;
				
				//remove it from the hand and add it to the discard list
				ds_list_add(discard, return_card);
				ds_list_delete(player_hand, remaining_player_hand - 1);

					}
			//if the player's hand is empty
			if(remaining_player_hand == 0)
			{
				//clear out the hand list and face_up list
				ds_list_clear(player_hand);
				ds_list_clear(player_face_up);
				
				//reset the wait timer
				wait_timer = 0;
				
				//if the deck is empty
				if(ds_list_size(deck) == 0)
				{
					//go to the shuffling state
					state = state_shuffle;
				} 
				else 
				{
					//go to the dealing state
					state = state_deal;
				}
			}
			
			
		}
		break;
	case state_shuffle:
		show_debug_message(state);
		wait_timer ++
		if(wait_timer >= 15 && move_timer == 0)
		{
			
			instance_create_layer(room_width/2, room_height/2, "results", obj_results)
			
			
		}
		if(wait_timer >= 250 && move_timer == 0)
		{
			
			instance_destroy(obj_results)
			obj_tarot_fairy.convo_part+=1
			//room_goto(rm_main)
			
			
		}
		
		break;
	default:
		//if something is wrong and we aren't in a recognizable state
		//we'll end up here
		show_debug_message(state);
		show_debug_message("oh no! something is wrong with the state");
		break;
}

//count and reset the move timer
move_timer++;
if(move_timer >= 16)
{
	move_timer = 0;
}


