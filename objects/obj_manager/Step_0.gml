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
	if global.score {
		instance_create_layer(611,642,"key", obj_key)
	}
}

if room = rm_piano {
	rm1_entered = true
	audio_pause_sound(snd_theme)
} 



