// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drawUI(){

	draw_set_color(c_dkgray);
	draw_rectangle(0,608,1366,768,false);
	draw_set_color(c_white);
	
	draw_text_transformed(32,608 + 24,"Selected Message", 3,3,0);
	draw_text_transformed(32,608 + (28 * 2), overlay_all ? "Overlay Mode" : (use_custom ? "Custom Data" : getMessageName(selected_message)), 3,3,0);
	
	var message_length = string_length(message_map[? selected_message]);
	
	draw_text_transformed(32,608 + (28 * 4), "Message Length is " + string(message_length), 3,3,0);

	draw_text_transformed(32 + 400,608 + 24,"Press 'I' for controls", 3,3,0);
	
	
	if(keyboard_check_released(ord("I"))){
		show_message("Arrow Keys to move eyes around\n" + 
		"E to toggle eye image while 'N' toggles numbers.\n" +
		"M to cycle default game messages while 'O' will overlay all eyes\n" + 
		"B will toggle line bars, while C will change the bar type\n" + 
		"U will ask for custom data and display it\n" + 
		"A will toggle showing ABCDE in place of numbers\n" + 
		"H will toggle color block mode\n" + 
		"1 will trigger selective isolation of eye types\n" + 
		"2 will trigger Isolation Mode which blacks out non-repeating eyes (turns overlay mode on)\n" +
		"3 will toggle Music Mode 5 blank, 0 C, 1 D, 2 E, 3 F, 4 G\n"+
		"P will cause the game to play the notes as noted above\n" + 
		"T will allow you to overlay things in more detail\n"+
		"0 will show summations of overlayed numbers\n"+
		"9 will draw based on the direction the yes look towards. (click on screen to start once toggled)");
	}
	
	if(keyboard_check_released(ord("M"))){
		use_custom = false;
		selected_message += 1
		selected_message = selected_message % (MESSAGE_ID.E5 + 1);
		
		instance_destroy(object_overlay_checker);
		has_spawned_isolation_bricks = false;
		summation_view_spawned = false;
		instance_destroy(object_summation_checker);
		instance_destroy(object_summation_finisher);
		//instance_destroy(object_direction_draw);
		ds_queue_clear(music_queue);
	}
	
	if(keyboard_check_released(ord("9"))){
		draw_directions = !draw_directions;
	}
	
	if(keyboard_check_released(ord("U"))){
		var new_data = true;
		if(custom_data != ""){
			new_data = show_question("Overwrite previous data?");
		}
		if(new_data){
			custom_data = get_string("Input Message Data valid 0-5", "");
		}
		use_custom = true;
	}
	
	if(keyboard_check_pressed(ord("1"))){
		blackout_mode = !blackout_mode;
		if(blackout_mode)
		blackout_index = get_integer("What Eye index is to be shown?: 0-5", "0");
	}
		
	if(keyboard_check_released(ord("T"))){
		selective_overlay_on = !selective_overlay_on;
		if(selective_overlay_on)
		selective_overlay = get_string("Show Selective Eyes overlayed, default is all","012345678");
	}
	
	if(keyboard_check_pressed(ord("0"))){
		summation_view = !summation_view;
		summation_view_spawned = false;
		instance_destroy(object_summation_checker);
		instance_destroy(object_summation_finisher);
	}
	
	if(keyboard_check_pressed(ord("P"))){
		
		if(ds_queue_empty(music_queue)){
			playEyeMessage(message_map[? selected_message]);
		} else {
			music_paused = !music_paused;	
		}
	}
	
	if(keyboard_check_pressed(ord("2"))){
		isolation_mode = !isolation_mode;
		if(!isolation_mode){
			instance_destroy(object_overlay_checker);
			has_spawned_isolation_bricks = false;
		} else {
			overlay_all = true;	
		}
	}
	
	if(keyboard_check_released(ord("H"))){
		show_color_blocks = !show_color_blocks	
	}
	
	if(keyboard_check_released(ord("3"))){
		music_mode = !music_mode;
	}
	
	if(keyboard_check_released(ord("A"))){
		show_alphabet = !show_alphabet;
	}
	
	if(keyboard_check_released(ord("O"))){
		overlay_all = !overlay_all;
	}
	
	if(keyboard_check_released(ord("B"))){
		show_bars = !show_bars;
	}
	
	if(keyboard_check_released(ord("C"))){
		chosen_bars += 1;
		chosen_bars = chosen_bars % 3;
	}
}