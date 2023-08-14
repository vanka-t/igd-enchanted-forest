/// @description Insert description here
// You can write your code in this editor
if room == rm_intro {
	if audio_is_playing(snd_theme){
		audio_pause_sound(snd_theme)
	}
	//if keyboard_check_pressed(vk_space){
	//	room_goto(rm_main)
	//}
}


if room = rm_main {

	if !audio_is_playing(snd_theme){
		audio_play_sound(snd_theme, 10, true)
	} else if audio_is_paused(snd_theme){
		audio_resume_sound(snd_theme)
		
	}

}




if room = rm_piano {
	rm_piano_entered = true
	
	audio_pause_sound(snd_theme)
} 

if room = rm_tarot {
	rm_tarot_entered = true
	
	audio_pause_sound(snd_theme)
	if !audio_is_playing(snd_tarot_room){
		audio_play_sound(snd_tarot_room, 10, true)
	}
} 

if tarot_complete && piano_complete{
//	instance_destroy(obj_door)
	global.gotKey = true
}


if room = rm_final {
	rm_final_entered =true
	audio_pause_sound(snd_theme)
}
/*
if rm_piano_entered {
	show_debug_message("piano entered!")
} else {
	show_debug_message("piano no :(")
}
