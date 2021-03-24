/// @description Insert description here
// You can write your code in this editor

if(selective_overlay_on){
	var selective_size = 1 + string_length(selective_overlay);
	for(var si = 0; si < selective_size; si++){
		var selec = string_char_at(selective_overlay, si);
		drawEyeMessage(message_map[? real(selec)]);
	}
	
} else {
	if(use_custom){
		drawEyeMessage(custom_data);
	} else {
		for(var message_index = 0; message_index < MESSAGE_ID.E5; message_index++){
			var selec = overlay_all ? message_index : selected_message;
			drawEyeMessage(message_map[? selec]);
		}
	}
}
if(isolation_mode){
	if(!has_spawned_isolation_bricks){
		has_spawned_isolation_bricks = true;
	}
}

if(show_trigram){
	if(!has_spawned_trigram){
		has_spawned_trigram = true;	
	}
}

if(tick % 16 == 0 && !music_paused){
	if(!ds_queue_empty(music_queue)){
		var data = ds_queue_dequeue(music_queue);
		todraw = [data[1],data[2]]
		switch(data[0]){
			case 0:
				audio_play_sound(snd_note_c,0,false);
			break;
			case 1:
				audio_play_sound(snd_note_d,0,false);
			break;
			case 2:
				audio_play_sound(snd_note_e,0,false);
			break;
			case 3:
				audio_play_sound(snd_note_f,0,false);
			break;
			case 4:
				audio_play_sound(snd_note_g,0,false);
			break;
		}
	}
	tick = 0;
}
tick++;

if(todraw != -1){
	draw_sprite_ext(eye_color_blocks,0,message_x + (todraw[0] * message_size), message_y + (todraw[1] * message_size), message_size, message_size,0,c_white,0.75);	
}