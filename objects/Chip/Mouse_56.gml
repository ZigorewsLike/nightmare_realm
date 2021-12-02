/// @description 
// Если нажатие относится к данному объекту
if(resize_bool){
	resize_bool = false;
	depth = -1;		//Изменение глубины объекта
	mouse_select_chip = false;
	
	// Проверка на вхождение индексов в диапазон доступных значений и проверка "пустого" значения карты по данным индексам
	if(el_in(index_x + pos_x, 0, 5) and el_in(index_y + pos_y, 0, 5) and cell_map[index_x + pos_x, index_y + pos_y] == "0"){
		cell_map[index_x, index_y] = "0";		// Текущая клетка становится пустой
		index_x += pos_x;
		index_y += pos_y;
		cell_map[index_x, index_y] = string(color_index + 1);	// Заполнили значение в том месте, куда поставили фишку
		x += calc_width*pos_x;
		y += calc_width*pos_y;
	}
	// Проверка на победу
	var user_win = false;
	for(var i=0; i<3; i++){
		cell_correct = is_finish();
		if(cell_correct[i] == 1){
			user_win = true;
		}else{
			user_win = false;
			break;
		}
	}
	if(user_win){
		show_message("Победа!");
	}
	shift_pos_x = 0;
	shift_pos_y = 0;
	pos_x = 0;
	pos_y = 0;
}
