/// @description Insert description here
// You can write your code in this editor





image_speed = 0
show_debug_message(count)
if keyboard_check_pressed(ord("A")) {
	audio_play_sound(snd_A,0,false);
	count+= .5
}

if keyboard_check_pressed(ord("S")) {
	audio_play_sound(snd_S,0,false);
	count+= .5
}

if keyboard_check_pressed(ord("D")) {
	audio_play_sound(snd_D,0,false);
	count+= .5
}

if keyboard_check_pressed(ord("F")) {
	audio_play_sound(snd_F,0,false);
	count+= .5
}  
if keyboard_check_pressed(ord("G")) {
	audio_play_sound(snd_G,0,false);
	count+= .5
}

if keyboard_check_pressed(ord("H")) {
	audio_play_sound(snd_H,0,false);
	count+= .5
}

if keyboard_check_pressed(ord("J")) {
	audio_play_sound(snd_J,0,false);
	count+= .5
}

if keyboard_check_pressed(ord("K")) {
	audio_play_sound(snd_K,0,false);
	count+= .5
}

if count == 10 {
	global.score = true
	obj_pianoFairy.convo_part +=1
	
	instance_destroy(self)//deactivate once playing song is over
	count = 0//room_goto(rm_main)

	
}



