/// @description Insert description here
// You can write your code in this editor


x = room_width/2
y = room_height/2


if state == fadeIn {
	image_alpha += fadeSpeed;
	if image_alpha >= 1{
		image_alpha = 1;
		state = fadeOut
		room_goto(room_to_transform_into)
		
	}
} 
else if state == fadeOut 
{
	image_alpha -= fadeSpeed;
	if (image_alpha<=0) {
		image_alpha = 0;
		instance_destroy();
	}
}


