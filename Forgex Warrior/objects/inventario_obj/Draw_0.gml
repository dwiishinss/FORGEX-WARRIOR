if(aberto == 1){
	draw_sprite(fundo_spr, 0, camera_obj.cam_x, camera_obj.cam_y)
	draw_sprite(inventario_spr, 0, x, y)
	
	for (var i = 0; i < 9 && i < array_length(global.inventory); i++)
	{
		var item = global.inventory[i];

		draw_sprite_ext(item.nome, 0, x+11+i*5, y+11, 0.25, 0.25, 0, c_white, 1)
	}
	
	for (var i = 9; i < 18 && i < array_length(global.inventory); i++)
	{
		var item = global.inventory[i];

		draw_sprite_ext(item.nome, 0, x+11+(i-9)*5, y+16, 0.25, 0.25, 0, c_white, 1)
	}
	
	for (var i = 18; i < 22 && i < array_length(global.inventory); i++)
	{
		var item = global.inventory[i];

		draw_sprite_ext(item.nome, 0, x+11+(i-18)*5, y+21, 0.25, 0.25, 0, c_white, 1)
	}
	for (var i = 22; i < 26 && i < array_length(global.inventory); i++)
	{
		var item = global.inventory[i];

		draw_sprite_ext(item.nome, 0, x+11+(i-22)*5, y+26, 0.25, 0.25, 0, c_white, 1)
	}
	for (var i = 26; i < 30 && i < array_length(global.inventory); i++)
	{
		var item = global.inventory[i];

		draw_sprite_ext(item.nome, 0, x+11+(i-26)*5, y+31, 0.25, 0.25, 0, c_white, 1)
	}
	for (var i = 30; i < array_length(global.inventory); i++)
	{
		var item = global.inventory[i];

		draw_sprite_ext(item.nome, 0, x+11+(i-30)*5, y+36, 0.25, 0.25, 0, c_white, 1)
	}
}