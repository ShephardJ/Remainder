//set initial value

if (global.getting_input=0)&&(mouse_check_button(mb_left))
{
    initialx=mouse_x;
    initialy=mouse_y;
    global.getting_input=1;
}
if ((global.getting_input=0)&&(!mouse_check_button(mb_left))) swipe=0;
//wait for release

if (mouse_check_button(mb_left))
{
    finalx=mouse_x;
    finaly=mouse_y;
}
if (mouse_check_button_released(mb_left))
{
    // calculate deltas
    var deltax=sqr((finalx-initialx)^2);
    var deltay=sqr((finaly-initialy)^2);
    if (finalx>initialx) touch_direction=0;
    if (finalx<initialx) touch_direction=1;
    
    //return 1 for a tap
    if((deltax<200)&&(deltay<200))
    {
        var swipe=1;
    }
    else
    {
        var deltacompare = (deltay/deltax)
    //return 2 for horizontal swipe
        if(deltacompare<=1) 
        {
            swipe=2;
            if (finalx>initialx) touch_direction=0;
            if (finalx<initialx) touch_direction=1;
        }

    //return 3 for vertical swipe
        if(deltacompare>1) 
        {
            swipe=3;
            if (finaly>initialy) touch_direction=1;
            if (finaly<initialy) touch_direction=0;
        }
    }
    global.getting_input=0  
    return swipe;
}
/*else return 0;*/
