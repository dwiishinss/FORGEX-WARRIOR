speed_vertical += grav

if(speed_vertical  > max_speed){
	speed__vertical = max_speed
}
if(place_meeting(x, y+speed_vertical, wall_object) == false){
	y += speed_vertical
}else{
	speed_vertical = 0
}

if(place_meeting(x,y,player_obj)){
	instance_destroy()	
}