/// @description Insert description here
// You can write your code in this editor



if global.gotKey {
	//instance_destroy(other)
	if !audio_is_playing(snd_door){
		audio_play_sound(snd_door,10,false)
	}
	if collision_point(x,y+vspd,obj_door,true,true){
			
			
			y+= vspd;
		
		}	
}





