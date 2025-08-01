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