/// @description Insert description here
// You can write your code in this editor

for(var message_index = 0; message_index < MESSAGE_ID.E5; message_index++){
	var selec = overlay_all ? message_index : selected_message;
	drawEyeMessage(message_map[? selec]);
}

drawUI();

