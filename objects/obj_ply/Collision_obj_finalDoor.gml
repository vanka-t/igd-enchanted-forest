/// @description Insert description here
// You can write your code in this editor


global.final_room_entered += 1
audio_play_sound(snd_door,10,false)
instance_deactivate_object(obj_ply)
fadeInfadeOut(rm_final,0.05)