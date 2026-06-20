speed_vertical += grav

if(speed_vertical  > max_speed){
	speed__vertical = max_speed
}
if(place_meeting(x, y+speed_vertical, wall_obj) == false){
	y += speed_vertical
}else{
	speed_vertical = 0
}

if(place_meeting(x,y,player_obj)){
	
	var existe_item = 0
	
	for (var i = 0; i < array_length(global.inventory); i++)
    {
        var item = global.inventory[i];

        if(item.nome == sprite_index){
			item.qtd = item.qtd+1
			existe_item = 1
		}
    }
	
	if(array_length(global.inventory) < 34){
		if(existe_item == 0){
			array_push(global.inventory, {
			    nome: sprite_index,
			    qtd: 1
			});
		}
		
		instance_destroy()
	}
	
	if(existe_item == 1){	
		instance_destroy()	
	}
}

function craft(recipe)
{
    if (!canCraft(recipe))
        return false;

    // Remove ingredientes
    for (var i = 0; i < array_length(recipe.ingredients); i++)
    {
        var item = recipe.ingredients[i][0];
        var amount = recipe.ingredients[i][1];

        inventory[item] -= amount;
    }

    // Adiciona item criado
    inventory[recipe.result] += recipe.amount;

    return true;
}