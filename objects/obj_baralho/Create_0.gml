#region stack
/*
global.baralho = ds_stack_create();
count = {
	dog: 0,
	snake: 0
}
var keys = struct_get_names(count)

for (i=0;i<10;i++){
	var chosen = irandom(array_length(keys)-1)
	var key = keys[chosen]
	ds_stack_push(global.baralho, chosen)
}
*/
#endregion

#region List
	global.baralho = ds_list_create()
	num_cards = 10
	
	var _card = 1
	repeat num_cards{
		global.baralho[| _card - 1] = (_card%2)+1
		_card += 1
	}

#endregion

enum cards{
	nome,
	ataque,
	vida,
	altura
}

#region grid
	global.grid_baralho = ds_grid_create(cards.altura,0)
	my_grid_add("Cachorro", 1, 2)
	my_grid_add("Cobra", 2, 1)
#endregion

selected_card = -1

cards_qtd=0