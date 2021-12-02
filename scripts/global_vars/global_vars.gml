function global_vars(){
	globalvar scale_factor;		// Параметр масштабирования спрайтов
	scale_factor = 1;
	globalvar cell_width;		// Ширина свободного пространства в клетке (SpriteField)
	cell_width = 11;
	globalvar mouse_select_chip;// Флаг "выбрана ли фишка?"
	mouse_select_chip = false;
	globalvar cell_map;		// Карта поля размером 5х5
	globalvar cell_ind;		// Массив индексов для выигрышной позиции
	globalvar cell_correct; // Массив для проверки собранных столбцов
		cell_correct = [0, 0, 0];
}