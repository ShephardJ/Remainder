///INPUT
touch_type=scr_get_input();
if touch_type=1&&player.moving=0
{
    //move to point
    if position_meeting(mouse_x,mouse_y,obj_point)
    {
        touch=instance_position(mouse_x,mouse_y,obj_point);
        if touch.point_n=global.point_array[player.current_point,6]||touch.point_n=global.point_array[player.current_point,5]||touch.point_n=global.point_array[player.current_point,4]||touch.point_n=global.point_array[player.current_point,3]
        {
            player.move_to_x=7.8*global.point_array[touch.point_n,7];
            player.move_to_y=7.8*global.point_array[touch.point_n,8]+n-(tiles_n+1-global.point_array[touch.point_n,9])*50*7.8;
            player.moving=1;
            player.current_point=touch.point_n;
            temp_player_state=current_player_state;
            current_player_state=player_world_state.moving;
            player_tap_sound=audio_play_sound(snd_player_tap,5,false);
            audio_sound_gain(player_tap_sound,global.vol_fx*0.6,0);
            audio_sound_pitch(player_tap_sound,0.925);
            return 2;
        }   
    }
    //go to menu
    if((mouse_x<115)&&(mouse_y>1423)&&(mouse_y<1486))||((mouse_x>967)&&(mouse_y>1423)&&(mouse_y<1486))
    {
        current_player_state=player_world_state.waiting;
        instance_create(1080/2,1920/2+(125-84/2)*7.8,obj_menu);
        global.getting_input=0;
        player_tap_sound=audio_play_sound(snd_player_tap,5,false);
        audio_sound_gain(player_tap_sound,global.vol_fx*0.6,0);
        audio_sound_pitch(player_tap_sound,0.925);
    }
}
else
{
    if player.moving=0
    {
        
        
        //move n
        var looking=(finaly-initialy)
        if global.getting_input=1&&abs(looking)>3
        {
            n+=looking;
            initialy=finaly;
        }
        //cap n 
        var nclamp=1920+(tiles_n+1-5)*50*7.8;
        if n<1920 n=1920;
        if n>nclamp n=nclamp;

        // scroll player
        if player.moving=0
        {
            player.x= global.point_array[player.current_point,7]*7.8;
            player.y= n-(tiles_n+1-global.point_array[player.current_point,9])*50*7.8+global.point_array[player.current_point,8]*7.8;
            player.move_to_x=player.x;
            player.move_to_y=player.y;
        }
    }
}


//set ys
var a1 = 0;
do 
{
    t_array[a1].y=n-(tiles_n+1-a1)*50*7.8;
    a1+=1;
}
until a1=tiles_n+1

//fire ys
var rate=t_array[burn_tile].burned/t_array[burn_tile].burn_amount;
creep1.burn_ratio=rate;
creep2.burn_ratio=rate;
creep3.burn_ratio=rate;

burn_fx.y=n-(tiles_n+1-burn_tile+1)*50*7.8;
creep1.y=n-(tiles_n+1-burn_tile)*50*7.8;
creep2.y=n-(tiles_n+1-burn_tile)*50*7.8;
creep3.y=n-(tiles_n+1-burn_tile)*50*7.8;
a1 = 9;
do
{
    flame[a1].y=n-(tiles_n+1-burn_tile)*50*7.8;
    a1-=1;
}
until a1=-1



