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
			
			if(music_mode){
				draw_set_color(c_purple);
				var note = getNoteFromData(eye_data);
				draw_text_transformed(xpos,ypos,note, image_size * 0.75, image_size * 0.75,0);
				draw_set_color(c_white);
			}
			
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
		
			if(show_color_blocks){
				draw_sprite_ext(eye_color_blocks,eye_data, xpos, ypos,image_size,image_size,0,c_white,1);
			}
			
			if(isolation_mode){
				if(!has_spawned_isolation_bricks){
					var check = instance_create_layer(xpos,ypos,"Instances",object_overlay_checker);
					check.image_xscale = image_size;
					check.image_yscale = image_size;
					check.eye_index = eye_data;
					check.xpos = xpos - message_x;
					check.ypos = ypos - message_y;
				}
			}
			
			if(music_mode){
				draw_set_color(c_purple);
				var note = getNoteFromData(eye_data);
				draw_text_transformed(xpos,ypos,note, image_size * 0.75, image_size * 0.75,0);
				draw_set_color(c_white);
			}
			
			if(blackout_mode){
				if(eye_data != blackout_index){
					draw_sprite_ext(eye_blackout,0, xpos, ypos,image_size,image_size,0,c_white,1);
				}
			}
		xpos += (11) * image_size;
		}
	}
	
}