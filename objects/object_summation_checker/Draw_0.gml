/// @description Insert description here
// You can write your code in this editor

if(eye_num == 0){
	//draw_set_color(c_red);	
} else {
	draw_self();
	draw_set_halign(fa_center);
draw_text_transformed(x+(4 * message_size),y,string(eye_num),message_size * 0.5,message_size* 0.5,0);
draw_set_color(c_white);
draw_set_halign(fa_left);
}