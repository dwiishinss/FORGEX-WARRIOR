t_left = keyboard_check(ord("A"))or keyboard_check(vk_left) //
t_right = keyboard_check(ord("D"))or keyboard_check(vk_right)//
t_down = keyboard_check(ord("S"))or keyboard_check(vk_down)//
t_up = keyboard_check(ord("W"))or keyboard_check(vk_up)//
t_space = keyboard_check(vk_space)

speed_horizontal = (t_right - t_left)*speed_x

if(place_meeting(x+speed_horizontal , y, wall_object) ==false){ // false true 
	x +=speed_horizontal
	

}

speed_vertical += grav

if(speed_vertical  > max_speed){
	speed__vertical = max_speed
}
if(place_meeting(x, y+speed_vertical, wall_object) == false){
	y += speed_vertical
}else{
	speed_vertical = 0
	if(t_space ==true){
		speed_vertical = -5
	}
}