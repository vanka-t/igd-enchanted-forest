/// @description Insert description here
// You can write your code in this editor





image_speed = 0

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

if count == 30 {
	global.score = true
	room_goto(rm_main)

	count = 0
}



