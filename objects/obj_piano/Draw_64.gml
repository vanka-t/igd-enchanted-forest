/// @description Insert description here
// You can write your code in this editor


//score bar
//draw_sprite(spr_piano_scoreBar,0,500,200)
image_alpha = clamp(image_alpha + 0.01, 0, 1);
	
draw_sprite_stretched(spr_scoreBar,0, score_x_pos, score_y_pos, (count/count_max)*score_width, 40)
draw_sprite(spr_scoreBarFrame, 0, score_x_pos, score_y_pos)



