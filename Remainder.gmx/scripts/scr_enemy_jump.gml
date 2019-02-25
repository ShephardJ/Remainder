// spider 1st action
var array_checking=current_range_array;
var moved=0;
/*var array_checking_times=0;*/
if start_jumping=1
{
if (array_checking>4)
{
    do
    {
        array_checking-=5;

    }
    until array_checking<0;
    array_checking+=5;
}
if array_checking<3
{   
    var array_being_checked=current_range_array+2;
    var stop=obj_overlay_test.range_array[array_being_checked];
    if stop=0
    {
        jumping=1;
        start_jumping=0;
        if array_checking=2 jump_lock=1;
        wait_lock_down=1;
        mouvement_speed=1;
    }
    else {global.enemy_acting=0;mouvement_speed=2;}
}
else
{
    if array_checking=3
    {   
        
        var att=instance_create(x,y,obj_enemie_attack);
        att.attack_type=1;
        att.attack_type_1=5;
        att.attack_type_2=4;
        att.damage_1=2;
        att.damage_2=1;
        
        wait_lock_down=1;
    }
    global.enemy_acting=0;
    
}

}
