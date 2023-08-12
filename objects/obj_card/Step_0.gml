/// @description Insert description here
// You can write your code in this editor





//if this card is in the player's hand and is not face up
if(in_player_hand && !face_up)
{
	//if the mouse is over this card and the player hasn't selected 2 cards
	if(position_meeting(mouse_x, mouse_y, id) && ds_list_size(obj_tarot_manager.player_face_up) < 2)
	{
		//bump up the card a little so the player knows they can select this card
		target_y = room_height * 0.75;
		
		//if they player presses the left mouse button
		if(mouse_check_button_pressed(mb_left))
		{
			//the card is now face up
			face_up = true;
			//add it to the face up list
			ds_list_add(obj_tarot_manager.player_face_up, id);
		}
	} 
	else
	{
		//if the player cannot select the card or isn't hovering on it, 
		//bump the card down to its original position
		target_y = room_height * 0.8;
	}
}





/*if this card is in the player's hand and is not face up
if(in_player_hand && ds_list_size(obj_tarot_manager.player_face_up) < 1)//&& !face_up)
{
	//the card is now face up
	face_up = true;
	//if the mouse is over this card and the player hasn't selected 2 cards
	if(position_meeting(mouse_x, mouse_y, id) )//&& obj_manager.player_card_selected == false)
	{
		//bump up the card a little so the player knows they can select this card
		target_y = room_height * 0.75;
		
		//if they player presses the left mouse button
		if(mouse_check_button_pressed(mb_left))
		{
			audio_play_sound(snd_flip, 0 ,false)
			obj_tarot_manager.selected = true
			in_player_hand  = false
			target_x = room_width/3
			target_y = room_height * 0.6;
			//add it to the face up list
			ds_list_add(obj_tarot_manager.player_face_up, id);
		
	
		}	
	}  else
	{
		//if the player cannot select the card or isn't hovering on it, 
		//bump the card down to its original position
		target_y = room_height * 0.8;
	}
	
} /*else if selected {
	target_y = room_height * 0.1;
}

