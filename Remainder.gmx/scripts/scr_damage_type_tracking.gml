//move along the values by one
var array_sum=0;
var doing_array_numb=0;
do
{
    damage_type_array[doing_array_numb]=damage_type_array[doing_array_numb+1];
    if varient=0damage_type_array_show[doing_array_numb].damage_type=damage_type_array_show[doing_array_numb+1].damage_type
    array_sum+=damage_type_array[doing_array_numb];
    doing_array_numb+=1;
}
until doing_array_numb=argument1;

//input new damage_type_taken
damage_type_array[doing_array_numb]=argument0;
if varient=0 damage_type_array_show[doing_array_numb].damage_type=argument0;
array_sum+=damage_type_array[doing_array_numb];

//return check
if damage_type_array[0]=damage_type_array[1]&&damage_type_array[2]=damage_type_array[1]
{
    doing_array_numb=0;
    if varient=0
    {
        do
        {
            if damage_type_array_show[doing_array_numb]>-0.2 damage_type_array_show[doing_array_numb].destroy=1;
            damage_type_array_show[doing_array_numb]=-2.526+doing_array_numb;
            doing_array_numb+=1;
        }
    until doing_array_numb=argument1+1;
    }
    return 1;
}
else return 0;

