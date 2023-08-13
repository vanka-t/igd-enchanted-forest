/// @description Insert description here
// You can write your code in this editor


if room = rm_main and rm_piano_entered {
	//have the player starting position be where they left
	obj_ply.x = obj_pianoDoor.x + 50
	obj_ply.y = obj_pianoDoor.y 
	
	//show banner that player completed challenge
	instance_activate_object(obj_banner)
	obj_banner.image_index = 1
	
	//deactivate everything
	alarm[1] = room_speed *1
	rm_piano_entered = false
} else {
	instance_deactivate_object(obj_banner)
}
/*
if room = rm_main and rm2_entered {
	rm2_entered = false
	obj_player.x = 3833
	obj_player.y = 2555
	instance_activate_object(obj_synth_yes)
	alarm[1] = room_speed *3
}



if room = rm_win {
	if !audio_is_playing(snd_win){
	audio_play_sound(snd_win,10,false)
	}
}


