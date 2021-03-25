/// @description Insert description here
// You can write your code in this editor
if(lead){

	if(!has_drawn){
		var data = message_map[? selected_message];
		var data_length = string_length(data);
		if(data_index < data_length){
			data_index++;
			var character = string_char_at(data, data_index);
			var character_dir = getEyeDirection(character);
			if(is_array(character_dir)){
				x = x+character_dir[0] * 4;
				y = y+character_dir[1] * 4;
				instance_create_layer(x,y,layer,object_direction_draw);	
			} else {
				if(character_dir == -1){
					y = last_line_y;
					x = last_line_x + 8;
					last_line_x = x;
					instance_create_layer(x,y,layer,object_direction_draw);	
				}
				if(character_dir == -2){
					x = starting_x;
					last_line_x = x;
					y = last_line_y + 12;
					last_line_y = y;
					instance_create_layer(x,y,layer,object_direction_draw);	
				}
			}
			alarm[0] = 1;
		} else {
			has_drawn = true
		}
	}
}

