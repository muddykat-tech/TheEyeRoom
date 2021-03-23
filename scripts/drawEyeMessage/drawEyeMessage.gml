// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drawEyeMessage(eye_data_holder){
	var xpos = message_x;
	var ypos = message_y;
	var image_size = message_size;
	var eye_data_size = string_length(eye_data_holder);
	for(var eye_data_index = 0; eye_data_index < eye_data_size; eye_data_index++){
		var eye_data = string_char_at(eye_data_holder, eye_data_index);
		
		draw_set_halign(fa_center);
		draw_text(xpos + (5 * image_size),ypos - (5 * image_size),eye_data);
		draw_set_halign(fa_left);
		
		
		if(eye_data == EYE_POSITIONS.newline){
			ypos += 13 * image_size;
			xpos = message_x;
		} else {
			draw_sprite_ext(sprite_eyes, eye_data, xpos, ypos,image_size,image_size,0,c_white,1);
			xpos += (12) * image_size;
		}
	}
}