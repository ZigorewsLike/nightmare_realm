function is_finish(){
	var result_list = [1, 1, 1];
	for(var i=0; i<3; i++){
		for(var j=0; j<5; j++){
			if(cell_map[i*2, j] != cell_ind[i]){ 
				result_list[i] = 0;
				break;
			}
		}
	}
	return result_list;
}