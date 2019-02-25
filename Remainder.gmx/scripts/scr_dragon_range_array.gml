var array_prt1=varient*5;
var array_prt2=0;
if(y<965)array_prt2=2;
if(y>965)&&(y<1205)array_prt2=3;
if(y>1205)array_prt2=4;
var array=array_prt1+array_prt2;
obj_overlay_test.range_array[array]=range;

return array;

