//move along the values by one
var array_sum=0;
var doing_array_numb=0;
do
{
    damage_array[doing_array_numb]=damage_array[doing_array_numb+1];
    array_sum+=damage_array[doing_array_numb];
    doing_array_numb+=1;
}
until doing_array_numb=argument1;

//input new damage_type_taken
damage_array[doing_array_numb]=argument0;
array_sum+=damage_array[doing_array_numb];
