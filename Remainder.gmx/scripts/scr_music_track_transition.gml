//pause_track_1
audio_sound_gain(argument0,argument1,0);
audio_pause_sound(argument0);

//play_track_2
audio_sound_gain(argument2,argument3,0);
audio_sound_set_track_position(argument2,base_time);
audio_resume_sound(argument2);
current_track=argument2;
