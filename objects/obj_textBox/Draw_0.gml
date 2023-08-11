/// @description Insert description here
// You can write your code in this editor

draw_rectangle(x-2, y-2, x+boxWidth+2, y+boxHeight+2, false)
draw_sprite(spr_textBox,0,x,y)

draw_set_font(font1)

if charCount < string_length(text[page]) {
	charCount +=1
}
textPart = string_copy(text[page], 1, charCount)

//name
draw_set_colour(c_yellow)
draw_set_halign(fa_center)
draw_text(x + (boxWidth/2),y+ yBuffer,name)
//dialogue
draw_set_halign(fa_left)
draw_set_colour(c_white)
draw_text_ext(x+xBuffer,y+strHeight+yBuffer,textPart,strHeight,boxWidth  - (2*xBuffer))





