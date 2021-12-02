/// @description
draw_set_alpha(abs(blink_param)*0.5);	// Задать прозрачность
draw_set_color(c_navy);					// Задать цвет
// Текущая позиция
draw_rectangle(x - resize_param + 5, 
				y - resize_param + 5, 
				x + chip_width + resize_param - 5, 
				y + chip_width + resize_param - 5,
				false);
// Выбор цвета для фишки
switch(color_index){
	default:
	case 0:
		draw_set_color(c_red);
		break;
	case 1:
		draw_set_color(c_green);
		break;
	case 2:
		draw_set_color(c_blue);
		break;
}
draw_set_alpha(1);
// Цвет у текстуры провода
draw_rectangle(x - resize_param + shift_pos_x + 3, 
				y - resize_param + shift_pos_y, 
				x + chip_width + resize_param + shift_pos_x - 3, 
				y + chip_width + resize_param + shift_pos_y,
				false);			

// Спрайт фишки
draw_sprite_stretched(SpriteChipImg, image_index, x - resize_param + shift_pos_x, 
				y - resize_param + shift_pos_y, 
				chip_width + resize_param*2 + 1, 
				chip_width + resize_param*2 + 1);


draw_set_alpha(1);
draw_set_color(c_white);