// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fadeInfadeOut(new_room,fade_rate){
	var ins = instance_create_depth(0,0,-999, obj_fade);
	ins.room_to_transform_into = new_room;
	ins.fadeSpeed = fade_rate;
}