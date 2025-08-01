var _card = 0

repeat num_cards{
	var _stg = global.baralho[| _card]
	draw_text(20,20+(_card*20),_stg)
	_card+=1
}