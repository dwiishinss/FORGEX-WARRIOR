if (mouse_check_button(mb_left)){
	if (place_meeting(x, y, mouse_obj) and distance_to_object(player_obj) < 8) {
		if(instance_number(break_obj_1) == 0){
show_debug_message("aqui")
			with instance_create_layer(x, y, "Animation", break_obj_1){
				other.my_break = id
			}
		}
		if(current_time-current_quebra > tempo_quebra*1000){
			instance_destroy(break_obj_1)
			my_break = ""
			with instance_create_depth(x+4+irandom_range(-6,6),y+4,0,item_obj){
				sprite_index = dirt_spr
			}
			instance_destroy()
		}
	}else{
		if(my_break != ""){
			instance_destroy(my_break)
			my_break = ""
		}
		current_quebra = current_time	
	}
}else{	
	if(my_break != ""){
		instance_destroy(my_break)
		my_break = ""
	}
	current_quebra = current_time
}
