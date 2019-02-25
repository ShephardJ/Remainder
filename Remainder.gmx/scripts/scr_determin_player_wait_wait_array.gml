me=14;
do
{
    if (obj_overlay_test.player_wait_wait_array[me]=0)
    {
        obj_overlay_test.player_wait_wait_array[me]=range;
        current_player_wait_wait_array=me;
    }
    else me-=1;
}

until current_player_wait_wait_array>-5
