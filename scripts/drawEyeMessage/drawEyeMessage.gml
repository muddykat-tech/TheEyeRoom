// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drawEyeMessage(eye_data_holder){
	var xpos = message_x;
	var ypos = message_y;
	var image_size = message_size;
	var eye_data_size = string_length(eye_data_holder);
	
	var isOffsetLine = false;
	
	for(var eye_data_index = 0; eye_data_index < eye_data_size; eye_data_index++){
		var eye_data = string_char_at(eye_data_holder, eye_data_index);
		

		if(eye_data == EYE_POSITIONS.newline){
			isOffsetLine = !isOffsetLine
			ypos += 7 * image_size;
			xpos = message_x + ((6 * image_size) * isOffsetLine);
		} else {
			if(show_alphabet){
				if(eye_data != EYE_POSITIONS.newline){
					draw_set_color(c_blue);
					draw_text_transformed(xpos,ypos,toLetter(eye_data), image_size * 0.75, image_size * 0.75,0);
					draw_set_color(c_white);
				}
			}
			if(show_eyes){
				draw_sprite_ext(sprite_eyes, eye_data, xpos, ypos,image_size,image_size,0,c_white,1);
			}
			if(show_numbers){
				if(eye_data != EYE_POSITIONS.newline){
					draw_set_color(c_red);
					draw_text_transformed(xpos,ypos,eye_data, image_size * 0.75, image_size * 0.75,0);
					draw_set_color(c_white);
				}
			}
			if(show_bars){
				var bar_types = [sprite_eyes_lines, sprite_eyes_lines_boxed, sprite_eyes_lines_origin];
				draw_sprite_ext(bar_types[chosen_bars], eye_data, xpos, ypos,image_size,image_size,0,c_white,1);
			}
		xpos += (11) * image_size;
		}
	}
	
}