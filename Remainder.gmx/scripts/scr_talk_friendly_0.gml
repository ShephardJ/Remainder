#define scr_talk_friendly_0
 
    instance_create(mouse_x-6*13,mouse_y-6.5*13,obj_tap);
    //go to 1st
    if(mouse_x>19*7.8)&&(mouse_x<120*7.8)&&(mouse_y>1920/2+4*7.8)&&(mouse_y<1920/2+34*7.8) 
    {
        if global.current_world>0 chosen=1;
        player_tap_sound=audio_play_sound(snd_player_tap,5,false);
        audio_sound_gain(player_tap_sound,global.vol_fx*0.6,0);
        audio_sound_pitch(player_tap_sound,0.925);
    }
    //advance
    if(mouse_x>19*7.8)&&(mouse_x<120*7.8)&&(mouse_y>1920/2+34*7.8)&&(mouse_y<1920/2+61*7.8) 
    {
        chosen=2;
        player_tap_sound=audio_play_sound(snd_player_tap,5,false);
        audio_sound_gain(player_tap_sound,global.vol_fx*0.6,0);
        audio_sound_pitch(player_tap_sound,0.925);
    }
    //leave
    if(mouse_x>19*7.8)&&(mouse_x<120*7.8)&&(mouse_y>1920/2+61*7.8)&&(mouse_y<1920/2+89*7.8) 
    {
        chosen=3;
        player_tap_sound=audio_play_sound(snd_player_tap,5,false);
        audio_sound_gain(player_tap_sound,global.vol_fx*0.6,0);
        audio_sound_pitch(player_tap_sound,0.925);
    }
    //go to 4th
    if(mouse_x>19*7.8)&&(mouse_x<120*7.8)&&(mouse_y>1920/2+90*7.8)&&(mouse_y<1920/2+116*7.8) 
    {
        if global.current_world>0 chosen=4;
        player_tap_sound=audio_play_sound(snd_player_tap,5,false);
        audio_sound_gain(player_tap_sound,global.vol_fx*0.6,0);
        audio_sound_pitch(player_tap_sound,0.925);
    }
    touch_type=0


#define scr_talk_friendly_1

#define scr_talk_friendly_2
