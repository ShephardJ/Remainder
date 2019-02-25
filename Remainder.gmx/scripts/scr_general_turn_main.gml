#define scr_general_turn_main
if current_state=1 && state=1
{
    if instance_exists(obj_army_soldier)state=irandom_range(2,4);
    else 
    {
        state=irandom_range(3,4);
        if state=3 state=2 
    }   
    if state=2 
    {

        var horse_role=irandom(2);
        if horse_role=2
        {

            horse_array[1]=instance_create(320+156,-300,obj_cavalry);
            horse_array[0]=instance_create(156,-300,obj_cavalry);
        }
        if horse_role=1
        {
            horse_array[1]=instance_create(796,-300,obj_cavalry);
            horse_array[0]=instance_create(156,-300,obj_cavalry);
        }
        if horse_role=0
        {
            horse_array[0]=instance_create(796,-300,obj_cavalry);
            horse_array[1]=instance_create(320+156,-300,obj_cavalry);

        }
    }
    if state=4
    {
        army_cleric=instance_create(156,y,obj_army_cleric);
    }
    moved_back=1;
    global.enemy_acting=0;
    return 0;
}
else
{
    if state=2 scr_general_turn_cavalry();
    if state=3 scr_general_turn_spear();
    if state=4 scr_general_turn_cleric();
    if state=5 scr_general_get_up();
}


#define scr_general_turn_cavalry
//start_attacking
    attacking=1;
    //wait for wind up
    if(attack_bank<wind_up)
    {
        attack_bank+=1;
        state_visual.winding_up=1;
        state_visual.anim_speed=(attack_bank/wind_up);
        state_visual.start_up=1;
        state_visual.mouvement=0;
    }
    //attack
    if(attack_bank>=wind_up)&&(winding_down=0)
    {
        state=5;
        horse_array[1].state=5;
        horse_array[0].state=5;
        
        state_visual.winding_up=0;
    }
    

moved_back=1;
moved=0;
global.enemy_acting=0;

#define scr_general_turn_spear
//start_attacking
    attacking=1;
    //wait for wind up
    if(attack_bank<wind_up)
    {
        attack_bank+=1;
        state_visual.winding_up=1;
        state_visual.anim_speed=(attack_bank/wind_up);
        state_visual.start_up=1;
        state_visual.mouvement=0;
    }
    //attack
    if(attack_bank>=wind_up)&&(winding_down=0)
    {
        var varnumb = numb
        
        do
        {
            if instance_exists(army_array[varnumb]) (army_array[varnumb]).state=3;
            varnumb-=1
        }
        until varnumb<0
        
        state_visual.winding_up=0;
        state=5;
    }

moved_back=1;
moved=0;
global.enemy_acting=0;

#define scr_general_turn_cleric
//start_attacking
    attacking=1;
    //wait for wind up
    if(attack_bank<wind_up)
    {
        attack_bank+=1;
        state_visual.winding_up=1;
        state_visual.anim_speed=(attack_bank/wind_up);
        state_visual.start_up=1;
        state_visual.mouvement=0;
    }
    //attack
    if(attack_bank>=wind_up)&&(winding_down=0)
    {
        army_cleric.state=state;
        army_cleric.spell=1;
        
        state_visual.winding_up=0;
        state=5;
    }

moved_back=1;
moved=0;
global.enemy_acting=0;

#define scr_general_get_up
//wait for wind down
    if(attack_bank>=wind_up)&&(winding_down<wind_down)
    {
        winding_down+=1;
        state_visual.winding_down=1;
        state_visual.anim_speed=(winding_down/wind_down);
        state_visual.start_up=1;
    }
    //return to normal
    if(attack_bank>=wind_up)&&(winding_down>=wind_down)
    {
        state=1
        
        attacking=0;
        winding_down=0;
        attack_bank=0;
        state_visual.winding_down=0;
        state_visual.anim_speed=0;
    }
    moved_back=1;
moved=0;
global.enemy_acting=0;