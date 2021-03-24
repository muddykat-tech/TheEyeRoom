// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playEyeMessage(data){
	var xpos = 0;
	var ypos = 0;
	var image_size = message_size;
	var data_size = string_length(data);
	var isOffsetLine = false;
	
	for(var index = 0; index < data_size; index++){
		var element = string_char_at(data, index);
		
		if(element == EYE_POSITIONS.newline){
			
			//ds_queue_enqueue(music_queue, [element, xpos,ypos, image_size]);
			isOffsetLine = !isOffsetLine
			ypos += 7;
			xpos = isOffsetLine ? 6 : 0;
			
		} else {
			ds_queue_enqueue(music_queue, [element, xpos,ypos, image_size]);
			
			xpos += 11;
		}
	}
	
}