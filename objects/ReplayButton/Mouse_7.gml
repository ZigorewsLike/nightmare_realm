/// @description Click

randomize();
for(var i=instance_number(Chip); i>=0; i--){	// Пройтись по объектам Chip
	var chip = instance_find(Chip, i);			// Найти фишку с индексом i
	instance_destroy(chip);						// Удалить
}
var field = instance_nearest(0, 0, FieldContainer); // Получить объект FieldConteiner
field.generateTile();								// Сгенерировать карту