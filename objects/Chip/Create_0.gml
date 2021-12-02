/// @description Init params
resize_param = 0;       // Параметр масштабирования при выборе фишки
resize_bool = false;    // Флаг увеличения фишки
blink_param = 0.0;      // Параметр "мигания" текущей клетки

image_index = irandom_range(0, 2); // Задать случайное изображение фишки
image_speed = 0; // Отключение анимации

index_x = 0; // Индекс на карте [0, 5] по оси ОХ
index_y = 0; // Индекс на карте [0, 5] по оси ОУ

shift_pos_x = 0; // Смещение фишки
shift_pos_y = 0;

calc_width = (cell_width+1)*scale_factor; // Ширина и высота фишки
pos_x = 0; // Новая позиция, относительно курсора
pos_y = 0;

