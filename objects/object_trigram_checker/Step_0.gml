/// @description Insert description here
// You can write your code in this editor
if(image_xscale != message_size){
	instance_destroy(object_overlay_checker);
	has_spawned_isolation_bricks = false;
}

x = message_x + xpos;
y = message_y + ypos;

if(!is_oddline){
	var othr = instance_position(x-((sprite_width/2) * image_xscale),y,object_trigram_checker);
	
	var othr2 = instance_position(x-((sprite_width*1.5) * image_xscale),y,object_trigram_checker);
	if(othr != noone && othr2 != noone){
		if(othr.color == c_white && othr2.color == c_white)
		color = c_red;
	}
} else {
		var othr = instance_position(x, y - (sprite_height * image_yscale),object_trigram_checker);
	if(othr != noone){
		var ocol = othr.color;
		color = ocol;
	}	
}

image_blend = color;