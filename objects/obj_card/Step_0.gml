var c = controls()
if selected{
	x = mouse_x
	y = mouse_y

	if c.shift{
		if sprite_index==spr_card_f{
			sprite_index=spr_card_t
		}else{
			sprite_index=spr_card_f
		}
	}
	if c.ctrl{
		if image_angle==90{
			image_angle=0
		}else{
			image_angle=90
		}
	}

}