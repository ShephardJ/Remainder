global.world=0;
randomize();


var fght_rnd = 12
repeat(13)
{
   fight_round_array[fght_rnd] = 0;
   fght_rnd -= 1;
}
do
{
var fght_rnd = 12;
var world_var= irandom_range(1,4);
var fire=irandom(1);
if world_var=4 var spec_world_var=irandom(4);
else spec_world_var=irandom(2);

//set world 12 to 9
repeat(4)
{
    //living_dead
    if world_var=1
    {
        if spec_world_var=0 global.world=111
        if spec_world_var=1 global.world=112
        if spec_world_var=2 global.world=112
        fight_round_array[12]=irandom_range(2,4);
        if global.world=112 fight_round_array[12]=5;
    }
    //humans
    if world_var=2
    {
        if spec_world_var=0 global.world=121
        if spec_world_var=1 global.world=122
        if spec_world_var=2 global.world=123
        var boss_role=irandom(2);
        if boss_role=0 fight_round_array[12]=6;
        if boss_role=1 fight_round_array[12]=1;
        if boss_role=2 fight_round_array[12]=7;
    }
    
    //fire
    if world_var=3
    {
        if fire=0
        {
        global.world=141
        fight_round_array[12]=1;
        }
        else
        {
            global.world=142
            fight_round_array[12]=8;
        }
    }
    //ice
    /*if world_var=4
    {
        global.world=151
        fight_round_array[12]=1;
    }*/
    //monsters
    if world_var=4
    {
        
        if spec_world_var=0 global.world=161
        if spec_world_var=1 global.world=162
        if spec_world_var=2 global.world=163
        if spec_world_var=3 global.world=164
        if spec_world_var=4 global.world=165
        fight_round_array[12]=irandom_range(1,2);
    }
    fight_round_array[fght_rnd] =global.world;
    fght_rnd-=1;
}

//set world 8 to 5
repeat(2)
{
    var world_var= irandom_range(1,4);
    var fire=irandom(1);
    if world_var=4{
        var spec_world_var=irandom(4)
    }
    else{
        if (world_var=2) var spec_world_var=irandom(3);
    else var spec_world_var=irandom(2);
    }
}
repeat(4)
{
    //living_dead
    if world_var=1
    {
        if spec_world_var=0 global.world=11
        if spec_world_var=1 global.world=12
        if spec_world_var=2 global.world=13
        fight_round_array[8]=irandom_range(2,4);
        if global.world=2 fight_round_array[8]=5;
    }
    //humans
    if world_var=2
    {
        if spec_world_var=0 global.world=21
        if spec_world_var=1 global.world=22
        if spec_world_var=2 global.world=23
        if spec_world_var=3 global.world=24
        var boss_role=irandom(2);
        if boss_role=0 fight_round_array[8]=6;
        if boss_role=1 fight_round_array[8]=1;
        if boss_role=2 fight_round_array[8]=7;
    }
    
    //fire
    if world_var=3
    {
        if fire=0
        {
            global.world=41
            fight_round_array[8]=1;
        }
        else
        {
            global.world=42
            fight_round_array[8]=8;
        }
    }
    //ice
    /*if world_var=4
    {
        global.world=51
        fight_round_array[8]=1;
    }*/
    //monsters
    if world_var=4
    {
        if spec_world_var=0 global.world=61;
        if spec_world_var=1 global.world=62;
        if spec_world_var=2 global.world=63;
        if spec_world_var=3 global.world=64;
        if spec_world_var=4 global.world=65;
        fight_round_array[8]=irandom_range(1,2);
    }
    
    fight_round_array[fght_rnd] =global.world;
    fght_rnd-=1;
}
var world_var= irandom(6)
//set world 4 to 0
repeat(5)
{
    
    global.world=world_var
    
    if global.world=1 fight_round_array[4]=1;
    else fight_round_array[4]=irandom_range(2,3);
    if global.world=2 fight_round_array[4]=5;
    if global.world=5 fight_round_array[4]=6;
    if global.world=6 fight_round_array[4]=7;
    fight_round_array[fght_rnd] =global.world;
    fght_rnd-=1;
    if world_var= 3 var world_var= irandom(4);
}
}until fight_round_array[8]-fight_round_array[7]<0;
/*
//debug

fight_round_array[12]=2;
fight_round_array[11]=111;
fight_round_array[10]=111;
fight_round_array[9]=111;
fight_round_array[8]=2;
fight_round_array[7]=123;
fight_round_array[6]=123;
fight_round_array[5]=111;
fight_round_array[4]=2;
fight_round_array[3]=111;
fight_round_array[2]=111;
fight_round_array[1]=111;
fight_round_array[0]=111;
*/
