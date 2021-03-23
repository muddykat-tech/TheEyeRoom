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
		show_message("Arrow Keys to move eyes around" + 
		"press 'E' to toggle eye image while 'N' toggles numbers." +
		" press 'M' to cycle default game messages while 'O' will overlay all eyes" + 
		"B will toggle line bars, while C will change the bar type" + 
		"U will ask for custom data and display it" + 
		"A will toggle showing ABCDE in place of numbers");
	}
	
	if(keyboard_check_released(ord("M"))){
		use_custom = false;
		selected_message += 1
		selected_message = selected_message % (MESSAGE_ID.E5 + 1);
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
		
	if(keyboard_check_released(ord("T"))){
		
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