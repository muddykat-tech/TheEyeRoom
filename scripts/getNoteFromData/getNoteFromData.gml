// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getNoteFromData(data){
	switch(data){
		case 0:
			return "C";
		case 1:
			return "D";
		case 2:
			return "E";
		case 3:
			return "F";
		case 4:
			return "G";
		case 5:
			return " ";
		default:
			return " ";
	}
}