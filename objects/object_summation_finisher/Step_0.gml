/// @description Insert description here
// You can write your code in this editor
if(eye_id != -1){
	var _num = instance_number(object_summation_checker);

	if _num > 0
    {
	    for (var i = 0; i < _num; ++i;){
			var inst = instance_find(object_summation_checker,i);
			if(instance_exists(inst))
			if(inst.eye_id == eye_id && inst.xpos == xpos && inst.ypos == ypos){
				eye_num += inst.eye_num;
				instance_destroy(inst);
			}
		}
	}

}