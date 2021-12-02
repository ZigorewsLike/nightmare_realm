/// @description Draw mesh

// Рисуем фон
draw_sprite_stretched(SpriteBackground, 0, 
				position_x - (map_sprite_width)/2 - 10, 
				position_y - (map_sprite_width)/2 - 35, 
				map_sprite_width + 22, map_sprite_width + 47);

// Рисуется рамка вокруг сетки
draw_set_color(make_colour_rgb(51, 48, 35));
draw_rectangle(position_x - (map_sprite_width)/2 - 2, 
				position_y - (map_sprite_width)/2 - 2, 
				position_x + (map_sprite_width)/2 + 2, 
				position_y + (map_sprite_width)/2 + 2, false);
draw_set_color(c_white);

// Сама сетка
draw_sprite_stretched(SpriteField, 0, 
					  position_x - (map_sprite_width)/2, 
					  position_y - (map_sprite_width)/2,
					  (map_sprite_width), 
					  (map_sprite_width));
					  
// Рисуются блоки
for(var ind_x=0; ind_x < 5; ind_x++){
	for(var ind_y=0; ind_y < 5; ind_y++){
		if(cell_map[ind_x, ind_y] == "9"){
			draw_sprite_stretched(SpriteChipImg, 3, 
						position_x - map_sprite_width/2 + (ind_x * scale_factor * (cell_width+1)), 
						position_y - map_sprite_width/2 + (ind_y * scale_factor * (cell_width+1)),
						scale_factor * (cell_width), scale_factor * (cell_width));
		}
	}
}

// В зависимости от блока рисуются лампы и закрашиваются соответствующем цветом
for(var i=0; i <3; i++){
	var color;
	switch(cell_ind[i]){
		default:
		case 1:
			color = c_red;
			break;
		case 2:
			color = c_green;
			break;
		case 3:
			color = c_blue;
			break;
	}
	draw_sprite_ext(SpriteLamp, cell_correct[i], 
					position_x - (map_sprite_width)/2 + (i * map_sprite_width / 5*2) + (scale_factor * (cell_width+1)/2) - sprite_get_width(SpriteLamp)/2*1.5, 
					position_y - (map_sprite_width)/2 - 43, 
					1.5, 1.5, 0, color, 1);
}