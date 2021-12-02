/// @description update
// Плавное изменение размера фишки
if(resize_bool){
	if(resize_param+1 < 5){
		resize_param += (6 - resize_param) / 5;
	}else{
		resize_param = 5;
	}
}else{
	if(resize_param-1 > 0){
		resize_param -= (6 - resize_param) / 5;
	}else{
		resize_param = 0;
	}
}

// Определение будущей позиции
if(mouse_select_chip and resize_bool){
	pos_x = sign(((mouse_x - x) - calc_width/2) div (calc_width/2));
	if (abs(pos_x) != 1){
		pos_y = sign(((mouse_y - y) - calc_width/2) div (calc_width/2));
	}else{
		pos_y = 0;
	}
}
// Предварительное перемещение фишки на будущую позицию
if((el_in(index_x + pos_x, 0, 5) and el_in(index_y + pos_y, 0, 5) and cell_map[index_x + pos_x, index_y + pos_y] == "0") or (pos_x == 0 and pos_y == 0)){
	shift_pos_x += ((calc_width * pos_x) - shift_pos_x) / 7;
	shift_pos_y += ((calc_width * pos_y) - shift_pos_y) / 7;
}
// Эффект "мигания"
if(blink_param >= 1){
	blink_param = -1;
}else{
	blink_param += 0.05;
}