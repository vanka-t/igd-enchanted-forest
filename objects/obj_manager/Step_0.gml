/// @description Insert description here
// You can write your code in this editor
if room == rm_intro {
	if !audio_is_playing(snd_intro){
		audio_play_sound(snd_intro, 10, true)
	}
	if audio_is_playing(snd_theme){
		audio_pause_sound(snd_theme)
	}
}

if keyboard_check_pressed(ord("m")) 
{
	room_goto(rm_tarot)
}


if room = rm_main {
if audio_is_playing(snd_intro){
		audio_pause_sound(snd_intro)
	}
	
	
	if !audio_is_playing(snd_theme){
		audio_play_sound(snd_theme, 10, true)
	} else if audio_is_paused(snd_theme){
		audio_resume_sound(snd_theme)
		
	}

}




if room = rm_piano_new {
	rm_piano_entered = true
	instance_deactivate_layer("piano_black")

	audio_pause_sound(snd_theme)
	if !audio_is_playing(snd_piano_room){
		audio_play_sound(snd_piano_room, 10, true)
	}
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
if global.gotKey {
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
