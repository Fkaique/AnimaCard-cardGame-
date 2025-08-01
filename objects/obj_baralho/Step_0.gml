var c = controls()
#region Stack
/*
if position_meeting(mouse_x, mouse_y, self){
	if mouse_check_button_pressed(mb_left){
		
		if !ds_stack_empty(global.baralho){
			var _carta = ds_stack_pop(global.baralho)
			var _inst = instance_create_layer(mouse_x, mouse_y,"Instances", obj_cartas)
			_inst.image_index=_carta-1
			carta_selected = _inst
		}
	}
}

if mouse_check_button_pressed(mb_right){
	carta_selected.selected = false;
	carta_selected = -1
}
*/
#endregion

#region List
if position_meeting(mouse_x, mouse_y, self){
	if c.clickl{
		if ds_list_size(global.baralho)>0{
			var _card = global.baralho[| 0]
			var _inst = instance_create_depth(mouse_x, mouse_y,depth-cards_qtd, obj_card)
			cards_qtd++
			_inst.image_index = (_card-1)%2
			_inst.nome = global.grid_baralho[# cards.nome, _inst.image_index]
			_inst.ataque = global.grid_baralho[# cards.ataque, _inst.image_index]
			_inst.vida = global.grid_baralho[# cards.vida, _inst.image_index]
			selected_card = _inst
			ds_list_delete(global.baralho, 0)
		}
	}
}
if c.clickr && selected_card != -1{
	selected_card.selected = false;
	selected_card = -1
}

//embaralhar

if c.ordR{
	ds_list_shuffle(global.baralho)
}

// retornar

var _inst_card = instance_place(mouse_x, mouse_y, obj_card)
if _inst_card{
	if c.ordT{
		var _height  = ds_list_size(global.baralho)
		global.baralho[| _height] = _inst_card.image_index + 1
		instance_destroy(_inst_card)
		cards_qtd--
	}
}


#endregion