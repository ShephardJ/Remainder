if(range_array[4]=0)&&(range_array[9]=0)&&(range_array[14]=0)
{
    var i =14;
    var check_x =2;
    var check_y =4;
    
    repeat (15)
    {
        //moving forward
        if (range_array[i]>0)
        {
            checking_x=(check_x*320+156);
            checking_y=(check_y*240+272);
            var inst=instance_position(checking_x+5,checking_y+5,all);
            with inst y+=240;
            range_array[i+1]=range_array[i];
            range_array[i]=0;
        }
        //next square coordenates
        check_y-=1;
        if(check_y=-1)
        {
            check_x -=1;
            check_y =4;
        }
        //next range array
        i-=1
    }
    AP_lost=1;
    temp_player_state=current_player_combat_state
    current_player_combat_state=player_combat_state.loosing_AP;
                    player_move_sound=audio_play_sound(snd_player_move,5,false);
                audio_sound_gain(player_move_sound,global.vol_fx*0.6,0);
}
