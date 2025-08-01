var _card = 0

repeat num_cards{
	var _stg = global.baralho[| _card]
	draw_text(20,20+(_card*20),_stg)
	_card+=1
}

var _grid = global.grid_baralho;

for (var ii = 0; ii< ds_grid_height(_grid); ii++){
	for (var i = 0; i < ds_grid_width(_grid); i++){
			var stg = _grid[# i, ii];
			draw_text(120 + (80 * i), 40 + (20 * ii), stg)
	}
}