function controls(){
	return{
		clickl		:		mouse_check_button_pressed(mb_left),
		clickr		:		mouse_check_button_pressed(mb_right),
		clicklr		:		mouse_check_button_released(mb_right),
		clickrr	:		mouse_check_button_released(mb_right),
		clickedl	:		mouse_check_button(mb_left),
		clickedr	:		mouse_check_button(mb_right),
		ctrl			:		keyboard_check_pressed(vk_control),
		shift		:		keyboard_check_pressed(vk_shift),
		ordR		:		keyboard_check_pressed(ord("R")),
		ordT		:		keyboard_check_pressed(ord("T")),
	}
}

function ds_grid_add_row(){
	/// @arg ds_grid
	/// @arg ds_grid_add_row(grid_index)
	
	var _grid = argument[0];
	ds_grid_resize(_grid, ds_grid_width(_grid), ds_grid_height(_grid) + 1)
	return(ds_grid_height(_grid) - 1);
}

function my_grid_add(){
	///@arg nome
	///@arg ataque
	///@arg vida
	
	if !(is_string(argument[0]) && is_numeric(argument[1]) && is_numeric(argument[2])) {
		show_error("Erro nos tipos dos argumentos na função 'my_grid_add'", true)
	}
	
	var _grid = global.grid_baralho
	var _linha = ds_grid_add_row(_grid)
	
	_grid[# 0, _linha] = argument[0]
	_grid[# 1, _linha] = argument[1]
	_grid[# 2, _linha] = argument[2]
}