// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getMessageName(message_id){
	var message_name = "";
	switch(message_id){
			case MESSAGE_ID.E1:
				message_name = "Message 0 East 1";
			break;
			case MESSAGE_ID.W1:
				message_name = "Message 1 West 1";
			break;
			case MESSAGE_ID.E2:	
				message_name = "Message 2 East 2";
			break;
			case MESSAGE_ID.W2:
				message_name = "Message 3 West 2";
			break;
			case MESSAGE_ID.E3:
				message_name = "Message 4 East 3";
			break;
			case MESSAGE_ID.W3:
				message_name = "Message 5 West 3";
			break;
			case MESSAGE_ID.E4:
				message_name = "Message 6 East 4";
			break;
			case MESSAGE_ID.W4:
				message_name = "Message 7 West 4";
			break;
			case MESSAGE_ID.E5:
				message_name = "Message 8 East 5";
			break;
	}
	
	return message_name;
}