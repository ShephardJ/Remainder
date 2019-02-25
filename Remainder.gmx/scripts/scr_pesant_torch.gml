#define scr_pesant_torch
instance_create(x,y,obj_pesant_acting);

//torch surounding enemies
if (place_meeting(x+320,y,obj_pesant))
{
    instance_create(x+320,y,obj_pesant_torched)
}

if (place_meeting(x+320,y+240,obj_pesant))
{
    instance_create(x+320,y+240,obj_pesant_torched)
}

if (place_meeting(x,y+240,obj_pesant))
{
    instance_create(x,y+240,obj_pesant_torched)
}

if (place_meeting(x-320,y+240,obj_pesant))
{
    instance_create(x-320,y+240,obj_pesant_torched)
}

if (place_meeting(x-320,y,obj_pesant))
{
    instance_create(x-320,y,obj_pesant_torched)
}

if (place_meeting(x-320,y-240,obj_pesant))
{
    instance_create(x-320,y-240,obj_pesant_torched)
}

if (place_meeting(x,y-240,obj_pesant))
{
    instance_create(x,y-240,obj_pesant_torched)
}

if (place_meeting(x+320,y-240,obj_pesant))
{
    instance_create(x+320,y-240,obj_pesant_torched)
}

//check
if place_meeting(x+320,y,obj_pesant){torch_hard_check+=1;eye=instance_create(x+320,y,obj_pesant_eye);}
if (!(current_range_array=4||current_range_array=9||current_range_array=14))&&place_meeting(x,y+240,obj_pesant){torch_hard_check+=1;eye=instance_create(x,y+240,obj_pesant_eye);}
if place_meeting(x-320,y,obj_pesant){torch_hard_check+=1;eye=instance_create(x-320,y,obj_pesant_eye);}
if place_meeting(x,y-240,obj_pesant){torch_hard_check+=1;eye=instance_create(x,y-240,obj_pesant_eye);}
if torched=0
{
    if (!(current_range_array=4||current_range_array=9||current_range_array=14))&&place_meeting(x+320,y+240,obj_pesant){torch_soft_check+=1;eye=instance_create(x+320,y+240,obj_pesant_eye);eye.image_index=1;}
    if (!(current_range_array=4||current_range_array=9||current_range_array=14))&&place_meeting(x-320,y+240,obj_pesant){torch_soft_check+=1;eye=instance_create(x-320,y+240,obj_pesant_eye);eye.image_index=1;}
    if place_meeting(x-320,y-240,obj_pesant){torch_soft_check+=1;eye=instance_create(x-320,y-240,obj_pesant_eye);eye.image_index=1;}
    if place_meeting(x+320,y-240,obj_pesant){torch_soft_check+=1;eye=instance_create(x+320,y-240,obj_pesant_eye);eye.image_index=1;}
}
else
{
    if (!(current_range_array=4||current_range_array=9||current_range_array=14))&&place_meeting(x+320,y+240,obj_pesant){torch_hard_check+=1;eye=instance_create(x+320,y+240,obj_pesant_eye);}
    if (!(current_range_array=4||current_range_array=9||current_range_array=14))&&place_meeting(x-320,y+240,obj_pesant){torch_hard_check+=1;eye=instance_create(x-320,y+240,obj_pesant_eye);}
    if place_meeting(x-320,y-240,obj_pesant){torch_hard_check+=1;eye=instance_create(x-320,y-240,obj_pesant_eye);}
    if place_meeting(x+320,y-240,obj_pesant){torch_hard_check+=1;eye=instance_create(x+320,y-240,obj_pesant_eye);}
    
    if place_meeting(x+640,y,obj_pesant){torch_soft_check+=1;eye=instance_create(x+640,y,obj_pesant_eye);eye.image_index=1;}
    if (!(current_range_array=4||current_range_array=3||current_range_array=9||current_range_array=8||current_range_array=14||current_range_array=13))&&place_meeting(x,y+480,obj_pesant){torch_soft_check+=1;eye=instance_create(x,y+480,obj_pesant_eye);eye.image_index=1;};
    if place_meeting(x-640,y,obj_pesant){torch_soft_check+=1;eye=instance_create(x-640,y,obj_pesant_eye);eye.image_index=1;}
    if place_meeting(x,y-480,obj_pesant){torch_soft_check+=1;eye=instance_create(x,y-480,obj_pesant_eye);eye.image_index=1;};
}


torch_check_count=torch_hard_check+torch_soft_check/2;

if torch_check_count>=1.5
{
    wait_lock_down=1
    global.enemy_acting=0;
    scr_show_damage(torch_check_count,1);
}
else
{
    varient=5;
    global.enemy_acting=0;
    scr_show_damage(torch_check_count,2);
    instance_destroy();
}


#define scr_pesant_check
instance_create(x,y,obj_pesant_acting);

//check
if place_meeting(x+320,y,obj_pesant){torch_hard_check+=1;eye=instance_create(x+320,y,obj_pesant_eye);}
if (!(current_range_array=4||current_range_array=9||current_range_array=14))&&place_meeting(x,y+240,obj_pesant){torch_hard_check+=1;eye=instance_create(x,y+240,obj_pesant_eye);}
if place_meeting(x-320,y,obj_pesant){torch_hard_check+=1;eye=instance_create(x-320,y,obj_pesant_eye);}
if place_meeting(x,y-240,obj_pesant){torch_hard_check+=1;eye=instance_create(x,y-240,obj_pesant_eye);}
if torched=0
{
    if (!(current_range_array=4||current_range_array=9||current_range_array=14))&&place_meeting(x+320,y+240,obj_pesant){torch_soft_check+=1;eye=instance_create(x+320,y+240,obj_pesant_eye);eye.image_index=1;}
    if (!(current_range_array=4||current_range_array=9||current_range_array=14))&&place_meeting(x-320,y+240,obj_pesant){torch_soft_check+=1;eye=instance_create(x-320,y+240,obj_pesant_eye);eye.image_index=1;}
    if place_meeting(x-320,y-240,obj_pesant){torch_soft_check+=1;eye=instance_create(x-320,y-240,obj_pesant_eye);eye.image_index=1;}
    if place_meeting(x+320,y-240,obj_pesant){torch_soft_check+=1;eye=instance_create(x+320,y-240,obj_pesant_eye);eye.image_index=1;}
}
else
{
    if (!(current_range_array=4||current_range_array=9||current_range_array=14))&&place_meeting(x+320,y+240,obj_pesant){torch_hard_check+=1;eye=instance_create(x+320,y+240,obj_pesant_eye);}
    if (!(current_range_array=4||current_range_array=9||current_range_array=14))&&place_meeting(x-320,y+240,obj_pesant){torch_hard_check+=1;eye=instance_create(x-320,y+240,obj_pesant_eye);}
    if place_meeting(x-320,y-240,obj_pesant){torch_hard_check+=1;eye=instance_create(x-320,y-240,obj_pesant_eye);}
    if place_meeting(x+320,y-240,obj_pesant){torch_hard_check+=1;eye=instance_create(x+320,y-240,obj_pesant_eye);}
    
    if place_meeting(x+640,y,obj_pesant){torch_soft_check+=1;eye=instance_create(x+640,y,obj_pesant_eye);eye.image_index=1;}
    if (!(current_range_array=4||current_range_array=3||current_range_array=9||current_range_array=8||current_range_array=14||current_range_array=13))&&place_meeting(x,y+480,obj_pesant){torch_soft_check+=1;eye=instance_create(x,y+480,obj_pesant_eye);eye.image_index=1;};
    if place_meeting(x-640,y,obj_pesant){torch_soft_check+=1;eye=instance_create(x-640,y,obj_pesant_eye);eye.image_index=1;}
    if place_meeting(x,y-480,obj_pesant){torch_soft_check+=1;eye=instance_create(x,y-480,obj_pesant_eye);eye.image_index=1;};
}



done_a_check=1;

torch_check_count=torch_hard_check+torch_soft_check/2;
if torch_check_count>=1.5
{
    wait_lock_down=1;
    global.enemy_acting=0;
    scr_show_damage(torch_check_count,1);
}
else
{
    varient=5;
    global.enemy_acting=0;
    scr_show_damage(torch_check_count,2);
    instance_destroy();
}

#define scr_pesant_torch_action
var array_checking=current_range_array;
var moved=0;
/*var array_checking_times=0;*/
if (array_checking>0)
{
    do
    {
        array_checking-=5;

    }
    until array_checking<0;
    array_checking+=5;
}

//start_attacking
if ((moved=0)||(attacking=1))&&(global.enemie_attack_count=0)
{
    attacking=1;
    //wait for wind up
    if(attack_bank<wind_up)
    {
        attack_bank+=1;
        state_visual.winding_up=1;
        state_visual.anim_speed=(attack_bank/wind_up);
        state_visual.start_up=1;
        state_visual.mouvement=0;
    }
    //attack
    if(attack_bank=wind_up)&&(winding_down=0)
    {
        scr_pesant_torch_spawn();
        state_visual.winding_up=0;
    }
    //wait for wind down
    if(attack_bank=wind_up)&&(winding_down<wind_down)
    {
        winding_down+=1;
        state_visual.winding_down=1;
        state_visual.anim_speed=(winding_down/wind_down);
        state_visual.start_up=1;
    }
    //return to normal
    if(attack_bank=wind_up)&&(winding_down=wind_down)
    {
        attacking=0;
        winding_down=0;
        attack_bank=0;
        state_visual.winding_down=0;
        state_visual.anim_speed=0;
    }
}

moved_back=1;
moved=0;
global.enemy_acting=0;

#define scr_pesant_torch_spawn
var array_checking=current_range_array;
var moved=0;
var spawned_a_pesant=0;
/*var array_checking_times=0;*/
if (array_checking>0)
{
    do
    {
        array_checking-=5;

    }
    until array_checking<0;
    array_checking+=5;
}
//set up torch check array
var var_check=14
do
{
    torch_check_array[var_check]=-1;
    var_check-=1;
}
until var_check=-1

var_check=14
//check bellow
if array_checking<4 {torch_check_array[var_check]=current_range_array+1; var_check-=1}
//check left
if current_range_array>4 {torch_check_array[var_check]=current_range_array-5; var_check-=1}
//check right
if current_range_array<10 {torch_check_array[var_check]=current_range_array+5; var_check-=1}
//check above
if array_checking>0 {torch_check_array[var_check]=current_range_array-1; var_check-=1}

//check bellow-left
if array_checking<4&&current_range_array>4 {torch_check_array[var_check]=current_range_array-4; var_check-=1}
//check bellow-right
if array_checking<4&&current_range_array<9 {torch_check_array[var_check]=current_range_array+6; var_check-=1}
//check above-left
if array_checking>0&&current_range_array>4 {torch_check_array[var_check]=current_range_array-6; var_check-=1}
//check above-right
if array_checking>0&&current_range_array<9 {torch_check_array[var_check]=current_range_array+4; var_check-=1}

//if on right check
if array_checking<4&&current_range_array>9{torch_check_array[var_check]=current_range_array-9; var_check-=1}
if current_range_array>9{torch_check_array[var_check]=current_range_array-10; var_check-=1}
if array_checking>0&&current_range_array>9{torch_check_array[var_check]=current_range_array-11; var_check-=1}

//if on left check
if array_checking<4&&current_range_array<5{torch_check_array[var_check]=current_range_array+11; var_check-=1}
if current_range_array<5{torch_check_array[var_check]=current_range_array+10; var_check-=1}
if array_checking>0&&current_range_array<5{torch_check_array[var_check]=current_range_array+9; var_check-=1}

var_check=14;

do
{
    if obj_overlay_test.range_array[torch_check_array[var_check]]=0
    {
        //get coordinates
        var yness=torch_check_array[var_check]
        if (yness>0)
        {
            do
            {
                yness-=5;

            }
            until yness<0;
            yness+=5;
        }
        
        if torch_check_array[var_check]>4 
        {
            if torch_check_array[var_check]>9 var xness=796;
            else var xness=476;
        }
        else var xness=155
        //spawn
        hit=instance_create(xness,271+yness*240,obj_pesant);
        
        if yness=4
        {
            var rvar=irandom(1);
            if rvar=0 hit.varient=0;
            else hit.varient=3;
            hit.moved_back=1;
        }
        
        if yness=3
        {
            var rvar=irandom(1);
            if rvar=0 hit.varient=2;
            else hit.varient=0;
            hit.moved_back=1;
        }
        
        if yness=2
        {
            var rvar=irandom(1);
            if rvar=0 hit.varient=2;
            else hit.varient=0;
            hit.moved_back=1;
        }
        
        if yness=1
        {
            hit.varient=2;
            hit.moved_back=1;
        }
        
        if yness=0
        {
            hit.varient=2;
            hit.moved_back=1;
        }
        spawned_a_pesant=1;
    }
    var_check-=1;
}
until ((torch_check_array[var_check]=-1)||(var_check=-1)||(spawned_a_pesant=1))

//failsafe
if spawned_a_pesant=0
{
if obj_overlay_test.range_array[14]=0
{
    hit=instance_create(796,1233,obj_pesant);
    var rvar=irandom(1);
    if rvar=0 hit.varient=0;
    else hit.varient=3;
    hit.moved_back=1;
    return 1;
}

if obj_overlay_test.range_array[9]=0
{
    hit=instance_create(476,1233,obj_pesant)
    var rvar=irandom(1);
    if rvar=0 hit.varient=0;
    else hit.varient=3;
    hit.moved_back=1;
    return 1;
}

if obj_overlay_test.range_array[4]=0
{
    hit=instance_create(155,1233,obj_pesant)
    var rvar=irandom(1);
    if rvar=0 hit.varient=0;
    else hit.varient=3;
    hit.moved_back=1;
    return 1;
}

if obj_overlay_test.range_array[13]=0
{
    hit=instance_create(796,993,obj_pesant)
    var rvar=irandom(1);
    if rvar=0 hit.varient=2;
    else hit.varient=0;
    hit.moved_back=1;
    return 1;
}

if obj_overlay_test.range_array[8]=0
{
    hit=instance_create(476,993,obj_pesant)
    var rvar=irandom(1);
    if rvar=0 hit.varient=2;
    else hit.varient=0;
    hit.moved_back=1;
    return 1;
}

if obj_overlay_test.range_array[3]=0
{
    hit=instance_create(155,993,obj_pesant)
    var rvar=irandom(1);
    if rvar=0 hit.varient=2;
    else hit.varient=0;
    hit.moved_back=1;
    return 1;
}

if obj_overlay_test.range_array[12]=0
{
    hit=instance_create(796,753,obj_pesant)
    var rvar=irandom(1);
    if rvar=0 hit.varient=2;
    else hit.varient=0;
    hit.moved_back=1;
    return 1;
}

if obj_overlay_test.range_array[7]=0
{
    hit=instance_create(476,753,obj_pesant)
    var rvar=irandom(1);
    if rvar=0 hit.varient=2;
    else hit.varient=0;
    hit.moved_back=1;
    return 1;
}

if obj_overlay_test.range_array[2]=0
{
    hit=instance_create(155,753,obj_pesant)
    var rvar=irandom(1);
    if rvar=0 hit.varient=2;
    else hit.varient=0;
    hit.moved_back=1;
    return 1;
}

if obj_overlay_test.range_array[11]=0
{
    hit=instance_create(796,512,obj_pesant)
    hit.varient=2;
    hit.moved_back=1;
    return 1;
}

if obj_overlay_test.range_array[6]=0
{
    hit=instance_create(476,512,obj_pesant)
    hit.varient=2;
    hit.moved_back=1;
    return 1;
}

if obj_overlay_test.range_array[1]=0
{
    hit=instance_create(155,512,obj_pesant)
    hit.varient=2;
    hit.moved_back=1;
    return 1;
}

if obj_overlay_test.range_array[10]=0
{
    hit=instance_create(796,271,obj_pesant)
    hit.varient=2;
    hit.moved_back=1;
    return 1;
}

if obj_overlay_test.range_array[5]=0
{
    hit=instance_create(476,271,obj_pesant)
    hit.varient=2;
    hit.moved_back=1;
    return 1;
}

if obj_overlay_test.range_array[0]=0
{
    hit=instance_create(155,271,obj_pesant)
    hit.varient=2;
    hit.moved_back=1;
    return 1;
}
}