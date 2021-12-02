/// @description Creation map
// Предположим, что спрайт сетки имеет квадратную форму и нет смысла инициализировать высоту
// Требуется сгенерировать карту размером 5х5

// CHIP MARKS:
//		1 = RED CHIP
//		2 = GREEN CHIP
//		3 = BLUE CHIP
//		0 = empty
//		9 = block

global_vars();				// Инициализация глобальных переменных
map_sprite_width = 150;		// Размер сетки, которую нужно нарисовать
scale_factor = map_sprite_width / sprite_get_width(SpriteField);		// Отношение требуемого размера сетки к реальному размеру спрайта
randomize();

position_x = room_width/2;
position_y = room_height/2 + 10;

			
// Генерация индексов. indexes хранит массив вида [0, 0, 0, 0, 0, 1, 1, 1, .... 2, 2]; cell_ind хранит массив вида [0, 1, 2]
for(var i=0; i<3; i++){
	cell_ind[i] = i+1;
	for(var j=0; j<5; j++){
		indexes[i*5 + j] = i;
	}
}


// Генератор карты
function generateTile(){
	cell_correct = [0, 0, 0];		// Изначально все столбцы не собраны
	indexes = array_mix(indexes);	// Перемешиваем индексы
	cell_ind = array_mix(cell_ind);	// Перемешиваем уникальные индексы

	// Проходимся циклом от 0 до 5х5
	var ind = 0;
	for(var i=0; i<25; i++){
		cell_map[i div 5, i mod 5] = "0";
		if(i div 5 mod 2 == 0){		// Если чётный столб, создаём объект Фишка
			var obj = instance_create_depth(position_x - map_sprite_width/2 + (i div 5 * scale_factor * (cell_width+1)), 
											position_y - map_sprite_width/2 + (i mod 5 * scale_factor * (cell_width+1)), 
											-1, Chip);
			obj.chip_width = scale_factor * cell_width - 1;
			obj.color_index = indexes[ind];	// Задаём индекс
			obj.index_y = i mod 5;
			obj.index_x = i div 5;
			cell_map[i div 5, i mod 5] = string(indexes[ind] + 1);
			ind++;
		}
	}
	// Добавление клеток-блоков
	for(var i=0; i<3; i++){
		for(var j=0; j<2; j++){
			cell_map[j*2 + 1, i*2] = "9"
		}
	}
}

generateTile();

