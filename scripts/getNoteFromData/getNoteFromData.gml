// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getNoteFromData(data){
	switch(data){
		case 0:
			return " ";
		case 1:
			return "C";
		case 2:
			return "D";
		case 3:
			return "E";
		case 4:
			return "F";
		case 5:
			return "G";
		default:
			return " ";
	}
}