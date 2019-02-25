

if(touch_type=1)
{
    instance_create(mouse_x-6*13,mouse_y-6.5*13,obj_tap);
    //set tab1
    if(mouse_x>55)&&(mouse_x<258)&&(mouse_y>(1920/2+179))&&(mouse_y<(1920/2+296))
    {
        item_selected=0;
        tab_selected=0;
        player_tap_sound=audio_play_sound(snd_player_tap,5,false);
        audio_sound_gain(player_tap_sound,global.vol_fx*0.6,0);
        audio_sound_pitch(player_tap_sound,0.925);
    }
    //set tab2
    if(mouse_x>296)&&(mouse_x<530)&&(mouse_y>(1920/2+179))&&(mouse_y<(1920/2+296))
    {
        item_selected=0;
        tab_selected=1;
        player_tap_sound=audio_play_sound(snd_player_tap,5,false);
        audio_sound_gain(player_tap_sound,global.vol_fx*0.6,0);
        audio_sound_pitch(player_tap_sound,0.975);
    }
    //set tab3
    if(mouse_x>553)&&(mouse_x<803)&&(mouse_y>(1920/2+179))&&(mouse_y<(1920/2+296))
    {
        item_selected=0;
        tab_selected=2;
        player_tap_sound=audio_play_sound(snd_player_tap,5,false);
        audio_sound_gain(player_tap_sound,global.vol_fx*0.6,0);
        audio_sound_pitch(player_tap_sound,0.95);
    }
    //set tab4
    if(mouse_x>827)&&(mouse_x<1030)&&(mouse_y>(1920/2+179))&&(mouse_y<(1920/2+296))
    {
        item_selected=0;
        tab_selected=3;
        player_tap_sound=audio_play_sound(snd_player_tap,5,false);
        audio_sound_gain(player_tap_sound,global.vol_fx*0.6,0);
        audio_sound_pitch(player_tap_sound,0.875);
    }
    
    //set item 1
    if(mouse_x>117)&&(mouse_x<296)&&(mouse_y>(1920/2+374))&&(mouse_y<(1920/2+569))
    {
        if item_selected=1 item_selected=0;
         else item_selected=1;
         player_tap_sound=audio_play_sound(snd_player_tap,5,false);
        audio_sound_gain(player_tap_sound,global.vol_fx*0.6,0);
        audio_sound_pitch(player_tap_sound,0.8);
        talk_selected_track=1;
    }
    if(mouse_x>117)&&(mouse_x<296)&&(mouse_y>(1920/2+577))&&(mouse_y<(1920/2+663))
    {
        if item_selected=1 
        {
            item_bought=1;
            player_tap_sound=audio_play_sound(snd_player_buy,5,false);
            audio_sound_gain(player_tap_sound,global.vol_fx*0.6,0);
            audio_sound_pitch(player_tap_sound,1);
        }
        else item_selected=1;
        player_tap_sound=audio_play_sound(snd_player_tap,5,false);
        audio_sound_gain(player_tap_sound,global.vol_fx*0.6,0);
        audio_sound_pitch(player_tap_sound,0.8);
    }
    
    //set item 2
    if(mouse_x>452)&&(mouse_x<631)&&(mouse_y>(1920/2+374))&&(mouse_y<(1920/2+569))
    {
        if item_selected=2 item_selected=0;
         else item_selected=2;
         player_tap_sound=audio_play_sound(snd_player_tap,5,false);
        audio_sound_gain(player_tap_sound,global.vol_fx*0.6,0);
        audio_sound_pitch(player_tap_sound,0.825);
        talk_selected_track=2;
    }
    if(mouse_x>452)&&(mouse_x<631)&&(mouse_y>(1920/2+577))&&(mouse_y<(1920/2+663))
    {
        if item_selected=2 
        {
            item_bought=2;
            player_tap_sound=audio_play_sound(snd_player_buy,5,false);
            audio_sound_gain(player_tap_sound,global.vol_fx*0.6,0);
            audio_sound_pitch(player_tap_sound,1);
        }
        else item_selected=2;
        player_tap_sound=audio_play_sound(snd_player_tap,5,false);
        audio_sound_gain(player_tap_sound,global.vol_fx*0.6,0);
        audio_sound_pitch(player_tap_sound,0.825);
    }
    
    //set item 3
    if(mouse_x>780)&&(mouse_x<959)&&(mouse_y>(1920/2+374))&&(mouse_y<(1920/2+569))
    {
         if item_selected=3 item_selected=0;
         else item_selected=3;
         player_tap_sound=audio_play_sound(snd_player_tap,5,false);
        audio_sound_gain(player_tap_sound,global.vol_fx*0.6,0);
        audio_sound_pitch(player_tap_sound,0.85);
        talk_selected_track=3;
    }
    if(mouse_x>780)&&(mouse_x<959)&&(mouse_y>(1920/2+577))&&(mouse_y<(1920/2+663))
    {
        if item_selected=3
        {
            item_bought=3;
            player_tap_sound=audio_play_sound(snd_player_buy,5,false);
            audio_sound_gain(player_tap_sound,global.vol_fx*0.6,0);
            audio_sound_pitch(player_tap_sound,1);
        }
        else item_selected=3;
        player_tap_sound=audio_play_sound(snd_player_tap,5,false);
        audio_sound_gain(player_tap_sound,global.vol_fx*0.6,0);
        audio_sound_pitch(player_tap_sound,0.85);
    }
    
    //set bottom pressed 1
    if(mouse_x>62)&&(mouse_x<335)&&(mouse_y>(1920/2+733))&&(mouse_y<(1920/2+936))
    {
        bottom_pressed=1;
        player_tap_sound=audio_play_sound(snd_player_buy,5,false);
        audio_sound_gain(player_tap_sound,global.vol_fx*0.6,0);
        audio_sound_pitch(player_tap_sound,1);
    }
    //set bottom pressed 2
    if(mouse_x>421)&&(mouse_x<663)&&(mouse_y>(1920/2+733))&&(mouse_y<(1920/2+936))
    {
        item_selected=0;
        tab_selected=4;
        player_tap_sound=audio_play_sound(snd_player_tap,5,false);
        audio_sound_gain(player_tap_sound,global.vol_fx*0.6,0);
        audio_sound_pitch(player_tap_sound,1);
    }
    //set bottom pressed 3
    if(mouse_x>827)&&(mouse_x<1030)&&(mouse_y>(1920/2+733))&&(mouse_y<(1920/2+936))
    {
        exit_var=1;
        player_tap_sound=audio_play_sound(snd_player_tap,5,false);
        audio_sound_gain(player_tap_sound,global.vol_fx*0.6,0);
        audio_sound_pitch(player_tap_sound,1);
    }
}
