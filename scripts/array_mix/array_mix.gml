function array_mix(input_array){
	randomize();
	for(var i=0; i < array_length_1d(input_array); i++){
		var ind = irandom_range(1, array_length_1d(input_array) - 1);
		var tmp = input_array[i];
		input_array[i] = input_array[ind];
		input_array[ind] = tmp;
	}
	return input_array;
}