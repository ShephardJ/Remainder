#define scr_crawl_drawing
var xcheck=0;
var ycheck=0;
if global.crawl_player_angle=0
{
    var xcheck=0;
    var ycheck=-3;
}

if global.crawl_player_angle=1
{
    var xcheck=3;
    var ycheck=0;
}

if global.crawl_player_angle=2
{
    var xcheck=0;
    var ycheck=3;
}

if global.crawl_player_angle=3
{
    var xcheck=-3;
    var ycheck=0;
}

if !(xcheck=0)
{
    do
    {
        if abs (xcheck=3)
        {
            //check above 2
            if global.crawl_player_position+xcheck*100-2>-1&&global.crawl_player_position+xcheck*100-2<10000
            {
                //if global.crawl_square_array[global.crawl_player_position+xcheck*100-2,0]>-1
                {
                    //set to the right layer
                    if xcheck>0 
                    {
                        screen_array[6].current_sprite=global.crawl_square_array[global.crawl_player_position+xcheck*100-2,1];
                        screen_array[6].current_image=global.crawl_square_array[global.crawl_player_position+xcheck*100-2,2];
                    }
                    else 
                    {
                        screen_array[10].current_sprite=global.crawl_square_array[global.crawl_player_position+xcheck*100-2,1];
                        screen_array[10].current_image=global.crawl_square_array[global.crawl_player_position+xcheck*100-2,2];
                    }
                    //set the right image
                    
                }
            }
            //check above 1
            if global.crawl_player_position+xcheck*100-1>-1&&global.crawl_player_position+xcheck*100-1<10000
            {
                //if global.crawl_square_array[global.crawl_player_position+xcheck*100-1,0]>-1
                {
                    //set to the right layer
                    if xcheck>0 screen_array[7].current_sprite=global.crawl_square_array[global.crawl_player_position+xcheck*100-1,1];
                    else screen_array[9].current_sprite=global.crawl_square_array[global.crawl_player_position+xcheck*100-1,1];
                    
                    //set the right image
                    if xcheck>0 screen_array[7].current_image=global.crawl_square_array[global.crawl_player_position+xcheck*100-1,2];
                    else screen_array[9].current_image=global.crawl_square_array[global.crawl_player_position+xcheck*100-1,2];
                }
            }
            //check center
            if global.crawl_player_position+xcheck*100>-1&&global.crawl_player_position+xcheck*100<10000
            {
                //if global.crawl_square_array[global.crawl_player_position+xcheck*100,0]>-1
                {
                    //set to the right layer
                    if xcheck>0 screen_array[8].current_sprite=global.crawl_square_array[global.crawl_player_position+xcheck*100,1];
                    else screen_array[8].current_sprite=global.crawl_square_array[global.crawl_player_position+xcheck*100,1];
                    
                    //set the right image
                    if xcheck>0 screen_array[8].current_image=global.crawl_square_array[global.crawl_player_position+xcheck*100,2];
                    else screen_array[8].current_image=global.crawl_square_array[global.crawl_player_position+xcheck*100,2];
                }
            }
            //check below 1
            if global.crawl_player_position+xcheck*100+1>-1&&global.crawl_player_position+xcheck*100+1<10000
            {
                //if global.crawl_square_array[global.crawl_player_position+xcheck*100+1,0]>-1
                {
                    //set to the right layer
                    if xcheck>0 screen_array[9].current_sprite=global.crawl_square_array[global.crawl_player_position+xcheck*100+1,1];
                    else screen_array[7].current_sprite=global.crawl_square_array[global.crawl_player_position+xcheck*100+1,1];
                    
                    //set the right image
                    if xcheck>0 screen_array[9].current_image=global.crawl_square_array[global.crawl_player_position+xcheck*100+1,2];
                    else screen_array[7].current_image=global.crawl_square_array[global.crawl_player_position+xcheck*100+1,2];
                }
            }
            //check below 2
            if global.crawl_player_position+xcheck*100+2>-1&&global.crawl_player_position+xcheck*100+2<10000
            {
                //if global.crawl_square_array[global.crawl_player_position+xcheck*100+2,0]>-1
                {
                    //set to the right layer
                    if xcheck>0 screen_array[10].current_sprite=global.crawl_square_array[global.crawl_player_position+xcheck*100+2,1];
                    else screen_array[6].current_sprite=global.crawl_square_array[global.crawl_player_position+xcheck*100+2,1];
                    
                    //set the right image
                    if xcheck>0 screen_array[10].current_image=global.crawl_square_array[global.crawl_player_position+xcheck*100+2,2];
                    else screen_array[6].current_image=global.crawl_square_array[global.crawl_player_position+xcheck*100+2,2];
                }
            }
        }
        if abs (xcheck=2)
        {
            
            //check above 1
            if global.crawl_player_position+xcheck*100-1>-1&&global.crawl_player_position+xcheck*100-1<10000
            {
                //if global.crawl_square_array[global.crawl_player_position+xcheck*100-1,0]>-1
                {
                    //set to the right layer
                    if xcheck>0 screen_array[3].current_sprite=global.crawl_square_array[global.crawl_player_position+xcheck*100-1,1];
                    else screen_array[5].current_sprite=global.crawl_square_array[global.crawl_player_position+xcheck*100-1,1];
                    
                    //set the right image
                    if xcheck>0 screen_array[3].current_image=global.crawl_square_array[global.crawl_player_position+xcheck*100-1,2];
                    else screen_array[5].current_image=global.crawl_square_array[global.crawl_player_position+xcheck*100-1,2];
                }
            }
            //check center
            if global.crawl_player_position+xcheck*100>-1&&global.crawl_player_position+xcheck*100<10000
            {
                //if global.crawl_square_array[global.crawl_player_position+xcheck*100,0]>-1
                {
                    //set to the right layer
                    if xcheck>0 screen_array[4].current_sprite=global.crawl_square_array[global.crawl_player_position+xcheck*100,1];
                    else screen_array[4].current_sprite=global.crawl_square_array[global.crawl_player_position+xcheck*100,1];
                    
                    //set the right image
                    if xcheck>0 screen_array[4].current_image=global.crawl_square_array[global.crawl_player_position+xcheck*100,2];
                    else screen_array[4].current_image=global.crawl_square_array[global.crawl_player_position+xcheck*100,2];
                }
            }
            //check below 1
            if global.crawl_player_position+xcheck*100+1>-1&&global.crawl_player_position+xcheck*100+1<10000
            {
                //if global.crawl_square_array[global.crawl_player_position+xcheck*100+1,0]>-1
                {
                    //set to the right layer
                    if xcheck>0 screen_array[5].current_sprite=global.crawl_square_array[global.crawl_player_position+xcheck*100+1,1];
                    else screen_array[3].current_sprite=global.crawl_square_array[global.crawl_player_position+xcheck*100+1,1];
                    
                    //set the right image
                    if xcheck>0 screen_array[5].current_image=global.crawl_square_array[global.crawl_player_position+xcheck*100+1,2];
                    else screen_array[3].current_image=global.crawl_square_array[global.crawl_player_position+xcheck*100+1,2];
                }
            }
        }
        if abs (xcheck=1)
        {
            
            //check above 1
            if global.crawl_player_position+xcheck*100-1>-1&&global.crawl_player_position+xcheck*100-1<10000
            {
               // if global.crawl_square_array[global.crawl_player_position+xcheck*100-1,0]>-1
                {
                    //set to the right layer
                    if xcheck>0 screen_array[0].current_sprite=global.crawl_square_array[global.crawl_player_position+xcheck*100-1,1];
                    else screen_array[2].current_sprite=global.crawl_square_array[global.crawl_player_position+xcheck*100-1,1];
                    
                    //set the right image
                    if xcheck>0 screen_array[0].current_image=global.crawl_square_array[global.crawl_player_position+xcheck*100-1,2];
                    else screen_array[2].current_image=global.crawl_square_array[global.crawl_player_position+xcheck*100-1,2];
                }
            }
            //check center
            if global.crawl_player_position+xcheck*100>-1&&global.crawl_player_position+xcheck*100<10000
            {
                //if global.crawl_square_array[global.crawl_player_position+xcheck*100,0]>-1
                {
                    //set to the right layer
                    if xcheck>0 screen_array[1].current_sprite=global.crawl_square_array[global.crawl_player_position+xcheck*100,1];
                    else screen_array[1].current_sprite=global.crawl_square_array[global.crawl_player_position+xcheck*100,1];
                    
                    //set the right image
                    if xcheck>0 screen_array[1].current_image=global.crawl_square_array[global.crawl_player_position+xcheck*100,2];
                    else screen_array[1].ccurrent_image=global.crawl_square_array[global.crawl_player_position+xcheck*100,2];
                }
            }
            //check below 1
            if global.crawl_player_position+xcheck*100+1>-1&&global.crawl_player_position+xcheck*100+1<10000
            {
                //if global.crawl_square_array[global.crawl_player_position+xcheck*100+1,0]>-1
                {
                    //set to the right layer
                    if xcheck>0 screen_array[2].current_sprite=global.crawl_square_array[global.crawl_player_position+xcheck*100+1,1];
                    else screen_array[0].current_sprite=global.crawl_square_array[global.crawl_player_position+xcheck*100+1,1];
                    
                    //set the right image
                    if xcheck>0 screen_array[2].current_image=global.crawl_square_array[global.crawl_player_position+xcheck*100+1,2];
                    else screen_array[0].current_image=global.crawl_square_array[global.crawl_player_position+xcheck*100+1,2];
                }
            }
        }
        if xcheck>0 xcheck-=1;
        if xcheck<0 xcheck+=1;
    }
    until xcheck=0
}

if !(ycheck=0)
{
    do
    {
        if abs (ycheck=3)
        {
            //check above 2
            if global.crawl_player_position+ycheck*1-200>-1&&global.crawl_player_position+ycheck*1-200<10000
            {
                //if global.crawl_square_array[global.crawl_player_position+ycheck*1-200,0]>-1
                {
                    //set to the right layer
                    if ycheck<0 
                    {
                        screen_array[6].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1-200,1];
                    }
                    else screen_array[10].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1-200,1];
                    
                    //set the right image
                    if ycheck<0 
                    {
                        screen_array[6].current_image=global.crawl_square_array[global.crawl_player_position+ycheck*1-200,2];
                    }
                    else screen_array[10].current_image=global.crawl_square_array[global.crawl_player_position+ycheck*1-200,2];
                }
            }
            //check above 1
            if global.crawl_player_position+ycheck*1-100>-1&&global.crawl_player_position+ycheck*1-100<10000
            {
                //if global.crawl_square_array[global.crawl_player_position+ycheck*1-100,0]>-1
                {
                    //set to the right layer
                    if ycheck<0 screen_array[7].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1-100,1];
                    else screen_array[9].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1-100,1];
                    
                    //set the right image
                    if ycheck<0 screen_array[7].current_image=global.crawl_square_array[global.crawl_player_position+ycheck*1-100,2];
                    else screen_array[9].current_image=global.crawl_square_array[global.crawl_player_position+ycheck*1-100,2];
                }
            }
            //check center
            if global.crawl_player_position+ycheck*1>-1&&global.crawl_player_position+ycheck*1<10000
            {
                //if global.crawl_square_array[global.crawl_player_position+ycheck*1,0]>-1
                {
                    //set to the right layer
                    if ycheck<0 screen_array[8].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1,1];
                    else screen_array[8].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1,1];
                    
                    //set the right image
                    if ycheck<0 screen_array[8].current_image=global.crawl_square_array[global.crawl_player_position+ycheck*1,2];
                    else screen_array[8].current_image=global.crawl_square_array[global.crawl_player_position+ycheck*1,2];
                }
            }
            //check below 1
            if global.crawl_player_position+ycheck*1+100>-1&&global.crawl_player_position+ycheck*1+100<10000
            {
                //if global.crawl_square_array[global.crawl_player_position+ycheck*1+100,0]>-1
                {
                    //set to the right layer
                    if ycheck<0 screen_array[9].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1+100,1];
                    else screen_array[7].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1+100,1];
                    
                    //set the right image
                    if ycheck<0 screen_array[9].current_image=global.crawl_square_array[global.crawl_player_position+ycheck*1+100,2];
                    else screen_array[7].current_image=global.crawl_square_array[global.crawl_player_position+ycheck*1+100,2];
                }
            }
            //check below 2
            if global.crawl_player_position+ycheck*1+200>-1&&global.crawl_player_position+ycheck*1+200<10000
            {
                //if global.crawl_square_array[global.crawl_player_position+ycheck*1+200,0]>-1
                {
                    //set to the right layer
                    if ycheck<0 screen_array[10].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1+200,1];
                    else screen_array[6].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1+200,1];
                    
                    //set the right image
                    if ycheck<0 screen_array[10].current_image=global.crawl_square_array[global.crawl_player_position+ycheck*1+200,2];
                    else screen_array[6].current_image=global.crawl_square_array[global.crawl_player_position+ycheck*1+200,2];
                }
            }
        }
        if abs (ycheck=2)
        {
            
            //check above 1
            if global.crawl_player_position+ycheck*1-100>-1&&global.crawl_player_position+ycheck*1-100<10000
            {
                //if global.crawl_square_array[global.crawl_player_position+ycheck*1-100,0]>-1
                {
                    //set to the right layer
                    if ycheck<0 screen_array[3].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1-100,1];
                    else screen_array[5].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1-100,1];
                    
                    //set the right image
                    if ycheck<0 screen_array[3].current_image=global.crawl_square_array[global.crawl_player_position+ycheck*1-100,2];
                    else screen_array[5].current_image=global.crawl_square_array[global.crawl_player_position+ycheck*1-100,2];
                }
            }
            //check center
            if global.crawl_player_position+ycheck*1>-1&&global.crawl_player_position+ycheck*1<10000
            {
                //if global.crawl_square_array[global.crawl_player_position+ycheck*1,0]>-1
                {
                    //set to the right layer
                    if ycheck<0 screen_array[4].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1,1];
                    else screen_array[4].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1,1];
                    
                    //set the right image
                    if ycheck<0 screen_array[4].current_image=global.crawl_square_array[global.crawl_player_position+ycheck*1,2];
                    else screen_array[4].current_image=global.crawl_square_array[global.crawl_player_position+ycheck*1,2];
                }
            }
            //check below 1
            if global.crawl_player_position+ycheck*1+100>-1&&global.crawl_player_position+ycheck*1+100<10000
            {
                //if global.crawl_square_array[global.crawl_player_position+ycheck*1+100,0]>-1
                {
                    //set to the right layer
                    if ycheck<0 screen_array[5].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1+100,1];
                    else screen_array[3].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1+100,1];
                    
                    //set the right image
                    if ycheck<0 screen_array[5].current_image=global.crawl_square_array[global.crawl_player_position+ycheck*1+100,2];
                    else screen_array[3].current_image=global.crawl_square_array[global.crawl_player_position+ycheck*1+100,2];
                }
            }
        }
        if abs (ycheck=1)
        {
            
            //check above 1
            if global.crawl_player_position+ycheck*1-100>-1&&global.crawl_player_position+ycheck*1-100<10000
            {
                //if global.crawl_square_array[global.crawl_player_position+ycheck*1-100,0]>-1
                {
                    //set to the right layer
                    if ycheck<0 screen_array[0].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1-100,1];
                    else screen_array[2].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1-100,1];
                    
                    //set the right image
                    if ycheck<0 screen_array[0].current_image=global.crawl_square_array[global.crawl_player_position+ycheck*1-100,2];
                    else screen_array[2].current_image=global.crawl_square_array[global.crawl_player_position+ycheck*1-100,2];
                }
            }
            //check center
            if global.crawl_player_position+ycheck*1>-1&&global.crawl_player_position+ycheck*1<10000
            {
                //if global.crawl_square_array[global.crawl_player_position+ycheck*1,0]>-1
                {
                    //set to the right layer
                    if ycheck<0 screen_array[1].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1,1];
                    else screen_array[1].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1,1];
                    
                    //set the right image
                    if ycheck<0 screen_array[1].current_image=global.crawl_square_array[global.crawl_player_position+ycheck*1,2];
                    else screen_array[1].current_image=global.crawl_square_array[global.crawl_player_position+ycheck*1,2];
                }
            }
            //check below 1
            if global.crawl_player_position+ycheck*1+100>-1&&global.crawl_player_position+ycheck*1+100<10000
            {
                //if global.crawl_square_array[global.crawl_player_position+ycheck*1+100,0]>-1
                {
                    //set to the right layer
                    if ycheck<0 screen_array[2].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1+100,1];
                    else screen_array[0].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1+100,1];
                    
                    //set the right image
                    if ycheck<0 screen_array[2].current_image=global.crawl_square_array[global.crawl_player_position+ycheck*1+100,2];
                    else screen_array[0].current_image=global.crawl_square_array[global.crawl_player_position+ycheck*1+100,2];
                }
            }
        }
        if ycheck>0 ycheck-=1;
        if ycheck<0 ycheck+=1;
    }
    until ycheck=0
}

current_player_crawl_state=player_crawl_state.waiting;

#define ychck
if !(ycheck=0)
{
    do
    {
        if abs (ycheck=3)
        {
            //check above 2
            if global.crawl_player_position+ycheck*1-20000>-1&&global.crawl_player_position+ycheck*1-200<10000
            {
                if global.crawl_square_array[global.crawl_player_position+ycheck*1-200,0]>-1
                {
                    //set to the right layer
                    if ycheck>0 
                    {
                        screen_array[6].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1-200,1];
                    }
                    else screen_array[10].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1-200,1];
                    
                    //set the right image
                    
                }
            }
            //check above 1
            if global.crawl_player_position+ycheck*1-100>-1&&global.crawl_player_position+ycheck*1-100<10000
            {
                if global.crawl_square_array[global.crawl_player_position+ycheck*1-100,0]>-1
                {
                    //set to the right layer
                    if ycheck>0 screen_array[7].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1-100,1];
                    else screen_array[9].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1-100,1];
                    
                    //set the right image
                    
                }
            }
            //check center
            if global.crawl_player_position+ycheck*1>-1&&global.crawl_player_position+ycheck*1<10000
            {
                if global.crawl_square_array[global.crawl_player_position+ycheck*1,0]>-1
                {
                    //set to the right layer
                    if ycheck>0 screen_array[8].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1,1];
                    else screen_array[8].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1,1];
                    
                    //set the right image
                    
                }
            }
            //check below 1
            if global.crawl_player_position+ycheck*1+100>-1&&global.crawl_player_position+ycheck*1+100<10000
            {
                if global.crawl_square_array[global.crawl_player_position+ycheck*1+100,0]>-1
                {
                    //set to the right layer
                    if ycheck>0 screen_array[9].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1+100,1];
                    else screen_array[7].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1+100,1];
                    
                    //set the right image
                    
                }
            }
            //check below 2
            if global.crawl_player_position+ycheck*1+200>-1&&global.crawl_player_position+ycheck*1+200<10000
            {
                if global.crawl_square_array[global.crawl_player_position+ycheck*1+200,0]>-1
                {
                    //set to the right layer
                    if ycheck>0 screen_array[10].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1+200,1];
                    else screen_array[6].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1+200,1];
                    
                    //set the right image
                    
                }
            }
        }
        if abs (ycheck=2)
        {
            
            //check above 1
            if global.crawl_player_position+ycheck*1-100>-1&&global.crawl_player_position+ycheck*1-100<10000
            {
                if global.crawl_square_array[global.crawl_player_position+ycheck*1-100,0]>-1
                {
                    //set to the right layer
                    if ycheck>0 screen_array[3].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1-100,1];
                    else screen_array[5].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1-100,1];
                    
                    //set the right image
                    
                }
            }
            //check center
            if global.crawl_player_position+ycheck*1>-1&&global.crawl_player_position+ycheck*1<10000
            {
                if global.crawl_square_array[global.crawl_player_position+ycheck*1,0]>-1
                {
                    //set to the right layer
                    if ycheck>0 screen_array[4].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1,1];
                    else screen_array[4].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1,1];
                    
                    //set the right image
                    
                }
            }
            //check below 1
            if global.crawl_player_position+ycheck*1+100>-1&&global.crawl_player_position+ycheck*1+100<10000
            {
                if global.crawl_square_array[global.crawl_player_position+ycheck*1+100,0]>-1
                {
                    //set to the right layer
                    if ycheck>0 screen_array[5].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1+100,1];
                    else screen_array[3].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1+100,1];
                    
                    //set the right image
                    
                }
            }
        }
        if abs (ycheck=1)
        {
            
            //check above 1
            if global.crawl_player_position+ycheck*1-100>-1&&global.crawl_player_position+ycheck*1-100<10000
            {
                if global.crawl_square_array[global.crawl_player_position+ycheck*1-100,0]>-1
                {
                    //set to the right layer
                    if ycheck>0 screen_array[0].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1-100,1];
                    else screen_array[2].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1-100,1];
                    
                    //set the right image
                    
                }
            }
            //check center
            if global.crawl_player_position+ycheck*1>-1&&global.crawl_player_position+ycheck*1<10000
            {
                if global.crawl_square_array[global.crawl_player_position+ycheck*1,0]>-1
                {
                    //set to the right layer
                    if ycheck>0 screen_array[1].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1,1];
                    else screen_array[1].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1,1];
                    
                    //set the right image
                    
                }
            }
            //check below 1
            if global.crawl_player_position+ycheck*1+100>-1&&global.crawl_player_position+ycheck*1+100<10000
            {
                if global.crawl_square_array[global.crawl_player_position+ycheck*1+100,0]>-1
                {
                    //set to the right layer
                    if ycheck>0 screen_array[2].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1+100,1];
                    else screen_array[0].current_sprite=global.crawl_square_array[global.crawl_player_position+ycheck*1+100,1];
                    
                    //set the right image
                    
                }
            }
        }
        if ycheck>0 ycheck-=1;
        if ycheck<0 ycheck+=1;
    }
    until ycheck=0
}