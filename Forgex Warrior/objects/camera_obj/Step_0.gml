var cam_w = camera_get_view_width(view_camera[0])
var cam_h = camera_get_view_height(view_camera[0])

var cam_x = player_obj.x - cam_w/2 + 8
var cam_y = player_obj.y - cam_h/2 + 8

camera_set_view_pos(view_camera[0], cam_x, cam_y)