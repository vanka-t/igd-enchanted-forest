/// @description Insert description here
// You can write your code in this editor

//checking to show banner and reposition player after exiting room
rm_piano_entered = false
rm_tarot_entered = false
rm_final_entered = false

//checking to unlock door
piano_complete = false
tarot_complete = false

global.have_cake = false
 
 //check how many times player has entered final room. enemy's chat depends on it
global.final_room_entered = 0
global.gotKey = false

start_x_pos = room_width/2

instance_deactivate_object(obj_banner)