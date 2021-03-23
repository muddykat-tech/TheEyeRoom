/// @description Insert description here
// You can write your code in this editor
var xaxis = keyboard_check(vk_right) - keyboard_check(vk_left);
var yaxis = keyboard_check(vk_down) - keyboard_check(vk_up);

message_x += xaxis;
message_y += yaxis;

tick++;

if(tick % 8 == 0){
	var saxis = keyboard_check(ord("W")) - keyboard_check(ord("S"));
	message_size = round(min(8,max(1,message_size + saxis)));
	tick = 0;
}