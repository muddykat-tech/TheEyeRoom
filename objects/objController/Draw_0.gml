/// @description Insert description here
// You can write your code in this editor

if(use_custom){
	drawEyeMessage(custom_data);
} else {
	for(var message_index = 0; message_index < MESSAGE_ID.E5; message_index++){
		var selec = overlay_all ? message_index : selected_message;
		drawEyeMessage(message_map[? selec]);
	}
}
if(isolation_mode){
	if(!has_spawned_isolation_bricks){
		has_spawned_isolation_bricks = true;
	}
}