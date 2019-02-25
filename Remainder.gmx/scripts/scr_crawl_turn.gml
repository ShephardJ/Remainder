menu=0;
touch_type=scr_get_input();
if touch_type=1
{
    //flip map
    if(mouse_x>844)&&(mouse_x<1019)&&(mouse_y>1520)&&(mouse_y<1694) 
    {
    
    }
    
    //button 1
    if(mouse_x>9*7.8)&&(mouse_x<45*7.8)&&(mouse_y>213*7.8)&&(mouse_y<237*7.8) 
    {
    
    }
    //button 2
    if(mouse_x>52*7.8)&&(mouse_x<88*7.8)&&(mouse_y>213*7.8)&&(mouse_y<237*7.8) 
    {
    
    }
    //button 3
    if(mouse_x>95*7.8)&&(mouse_x<131*7.8)&&(mouse_y>213*7.8)&&(mouse_y<237*7.8) 
    {
    
    }
    //go to menu
    if((mouse_x>0)&&(mouse_x<125)&&(mouse_y>1423)&&(mouse_y<1486))||((mouse_x>975)&&(mouse_y>1423)&&(mouse_y<1486))
    {
        temp_player_state=current_player_crawl_state;
        instance_create(1080/2,1920/2+(125-84/2)*7.8,obj_menu);
        current_player_crawl_state=player_crawl_state.waiting;
        player_tap_sound=audio_play_sound(snd_player_tap,5,false);
        audio_sound_gain(player_tap_sound,global.vol_fx*0.6,0);
        audio_sound_pitch(player_tap_sound,0.925);
        return 0;
    }
}
//turn left or right
if touch_type=2
{
   if touch_direction=0 global.crawl_player_angle+=1
   if touch_direction=1 global.crawl_player_angle-=1
   if global.crawl_player_angle>3 global.crawl_player_angle=0;
   if global.crawl_player_angle<0 global.crawl_player_angle=3;
   clock=refresh;
}
//move forwards or backwards
if touch_type=3
{
        //move south
        if scr_crawl_y(global.crawl_player_position)<99
        {
            if global.crawl_player_angle=0//up
            {
                if touch_direction=1 global.crawl_player_position+=1
            }
            if global.crawl_player_angle=2//down
            {
                if touch_direction=0 global.crawl_player_position+=1;
            }
        }
        //move north
        if scr_crawl_y(global.crawl_player_position)>0
        {
            if global.crawl_player_angle=0//up
            {
                if touch_direction=0 global.crawl_player_position-=1;
            }
            if global.crawl_player_angle=2//down
            {
                if touch_direction=1 global.crawl_player_position-=1;
            }
        }
        //move west
        if scr_crawl_x(global.crawl_player_position)<99
        {
            if global.crawl_player_angle=1//right
            {
                if touch_direction=0 global.crawl_player_position+=100
            }
            if global.crawl_player_angle=3//left
            {
                if touch_direction=1 global.crawl_player_position+=100
            }
        }
        //move east
        if scr_crawl_x(global.crawl_player_position)>0
        {
            if global.crawl_player_angle=1//right
            {
                if touch_direction=1 global.crawl_player_position-=100
            }
            if global.crawl_player_angle=3//left
            {
                if touch_direction=0 global.crawl_player_position-=100
            }
        }
        
        clock=refresh;
}
//timer for drawing
clock+=1;
if clock>=refresh
{
    temp_player_state=current_player_crawl_state;
    current_player_crawl_state=player_crawl_state.drawing
    gui_top_front.run=1;
    drawing=1;
    clock=0;
}
 
