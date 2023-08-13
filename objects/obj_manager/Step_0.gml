/// @description Insert description here
// You can write your code in this editor
if room == rm_start {
	if audio_is_playing(snd_theme){
		audio_pause_sound(snd_theme)
	}
	if keyboard_check_pressed(vk_space){
		room_goto(rm_main)
	}
}


if room = rm_main {

	if !audio_is_playing(snd_theme){
		audio_play_sound(snd_theme, 10, true)
	}
	
	if audio_is_paused(snd_theme){
		audio_resume_sound(snd_theme)
		
	}

}

if room = rm_piano {
	rm_piano_entered = true
	piano_complete = true
	audio_pause_sound(snd_theme)
} 

if room = rm_tarot {
	rm_tarot_entered = true
	tarot_complete = false
	audio_pause_sound(snd_theme)
} 

if tarot_complete && piano_complete{
	global.gotKey = true
}

/*
if rm_piano_entered {
	show_debug_message("piano entered!")
} else {
	show_debug_message("piano no :(")
}
