//set max mouve range and xs
if(argument0<5)
{
    var max_moved_by=argument0;
    var xs=155;
    var xi=0
}
if(argument0>4)&&(argument0<10)
{
    var max_moved_by=(argument0-5);
    var xs=476;
    var xi=5
}
if(argument0>9)&&(argument0<15)
{
    var max_moved_by=(argument0-10);
    var xs=796
    var xi=10
}
//set vars
var temp_array=argument0-1;
var checked_array_value=0;
//check range_array until max moved by=0 or checked_array_value>0
if (max_moved_by>0)
{
    do
    {
        checked_array_value=obj_overlay_test.range_array[temp_array]
        //push other enemy if collision
        if (checked_array_value>0)
        {
            ys=(271+(temp_array-xi)*240);
            var inst=instance_place(xs,ys-30,all);
            with inst {pushed=1;damage_taken_type_1=argument1;damage_taken_1=5;damage_taken_type_2=0;damage_taken_2=0} 
        }
        else
        {
        instance_create(x,y,obj_pushed);
        y-=240;
        }
        temp_array-=1;
        max_moved_by-=1;   
    }
    until((max_moved_by=0)||(checked_array_value>0))

}
