/// @description Insert description here
// You can write your code in this editor


if room = rm_main and rm_piano_entered {
	piano_complete = true
	//have the player starting position be where they left
	obj_ply.x = obj_pianoDoor.x 
	obj_ply.y = obj_pianoDoor.y  + 150
	
	//show banner that player completed challenge
	instance_activate_object(obj_banner)
	obj_banner.image_index = 0
	
	//deactivate everything
	alarm[1] = room_speed *3
	rm_piano_entered = false
	
}

if room = rm_main and rm_tarot_entered {
	audio_pause_sound(snd_tarot_room)
		tarot_complete = true

	//have the player starting position be where they left
	obj_ply.x = obj_tarotDoor.x 
	obj_ply.y = obj_tarotDoor.y  + 150
	
	//show banner that player completed challenge
	instance_activate_object(obj_banner)
	obj_banner.image_index = 1
	
	//deactivate everything
	alarm[1] = room_speed *3
	rm_tarot_entered = false
}

if room = rm_main and rm_final_entered {
	obj_ply.x = obj_finalDoor.x 
	obj_ply.y = obj_finalDoor.y  + 150
	rm_final_entered = false
}

if room = rm_win {
	if !audio_is_playing(snd_win){
	audio_play_sound(snd_win,10,false)
	}
}


