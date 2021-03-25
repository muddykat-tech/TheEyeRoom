// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getEyeDirection(character){
	switch(character){
		case EYE_POSITIONS.down:
		return [0,1];
		case EYE_POSITIONS.up:
		return [0,-1];
		case EYE_POSITIONS.left:
		return [-1,0];
		case EYE_POSITIONS.right:
		return [1,0];
		case EYE_POSITIONS.center:
		return -1;
		case EYE_POSITIONS.newline:
		return -2;
	}
}

function bound(upper, lower, value){
	return value > upper ? upper : (value < lower ? lower : value);	
}