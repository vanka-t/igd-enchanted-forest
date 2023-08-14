/// @description Insert description here
// You can write your code in this editor

//draw_rectangle(x-2, y-2, x+boxWidth+, y+boxHeight+2, false)
draw_sprite(spr_textBox,0,x_pos,y_pos)

draw_set_font(font1)

if charCount < string_length(text[page]) {
	charCount +=1
}
textPart = string_copy(text[page], 1, charCount)

//name
draw_set_colour(c_blue)
draw_set_halign(fa_center)
draw_text(x_pos + (boxWidth/2),y_pos+ yBuffer,name)
//dialogue
draw_set_halign(fa_left)
draw_set_colour(c_white)
draw_text_ext(x_pos+xBuffer,y_pos+strHeight+(yBuffer*2),textPart,strHeight,boxWidth  )//- (2*xBuffer))





