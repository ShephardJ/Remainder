var array_checking=current_range_array;
var moved=0;
/*var array_checking_times=0;*/
if start_spell=1
{
if (array_checking>0)
{
    do
    {
        array_checking-=5;

    }
    until array_checking<0;
    array_checking+=5;
}
if !(array_checking=4||array_checking=9||array_checking=14)
{   
     spell=1;
     start_spell=0;
     wait_lock_down=1
}
else global.enemy_acting=0;
}
