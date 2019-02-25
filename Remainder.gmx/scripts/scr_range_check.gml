current_range_array=0+((argument1-271)/240);
round (current_range_array)
if(argument0>470)current_range_array=current_range_array+5;
if(argument0>790)current_range_array=current_range_array+5;

obj_overlay_test.range_array[current_range_array]=argument2;
return (round(current_range_array));

