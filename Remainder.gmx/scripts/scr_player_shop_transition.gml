#define scr_player_shop_transition
//go to shop
/*touch_type=scr_get_input();
if instance_exists(obj_shop_master) shop_master.touch_type=touch_type;*/
if (transition_count=0)&&(transition_delay=0)&&(!instance_exists (obj_transitions))
{
    transition=instance_create(1080/2,1920/2,obj_transitions);
}
if instance_exists (obj_transitions)
{
    if(transition_count=0)&&(transition.image_speed=0)
    {
        draw_stuff.destroy=1;
        player_choice_1.destroy=1;
        player_choice_2.destroy=1;
        player_choice_3.destroy=1;
        transition.destroy=1;
        transition_delay=1;
        shop_master=instance_create(0,0,obj_shop_master);
    }
}
if (transition_count=0)&&(transition_delay=1)&&!instance_exists (obj_transitions) transition_count=1


if(transition_count=1)&&(shop_master.exit_var=1)
{
    transition=instance_create(1080/2,1920/2,obj_transitions);
    transition_count=2
}
if instance_exists (obj_transitions)
{
    if(transition_count=2)&&(transition.image_speed=0)
    {
        shop_master.destroy=1;
        transition.destroy=1;
        transition_count=3
        
    }
    if !instance_exists (obj_shop_master)&&transition_count=3
    {
        transition_count=0;
        transition_delay=0;
        transition_delay=0;
        transition_end=1;
    }
}

#define scr_player_transition
//go to shop
/*touch_type=scr_get_input();
if instance_exists(obj_shop_master) shop_master.touch_type=touch_type;*/
if (transition_count=0)&&(transition_delay=0)&&(!instance_exists (obj_transitions))
{
    
    transition=instance_create(1080/2,1920/2,obj_transitions);
}
if instance_exists (obj_transitions)
{
    if(transition_count=0)&&(transition.image_speed=0)
    {
        draw_stuff.destroy=1;
        player_choice_1.destroy=1;
        player_choice_2.destroy=1;
        player_choice_3.destroy=1;
        transition.destroy=1;
        transition_count=1;
        transition_count=0;
        transition_delay=0;
        transition_end=1;
    }
}