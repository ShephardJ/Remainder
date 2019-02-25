#define scr_airship_open_hatch
if (hatch_array[0].acting=0)&&(hatch_array[1].acting=0)&&(hatch_array[2].acting=0)
{
    if(hatch_state_array[0]=1||hatch_state_array[0]=0)&&(hatch_state_array[1]=1||hatch_state_array[1]=0)&&(hatch_state_array[2]=1||hatch_state_array[2]=0)&&(state_switching=0)
    {
        //open three hatches
        var parts=3
        do
        {
            parts-=1;
            if !(hatch_array[parts].state=0)
            {
                cannon_array[parts].acted=0;
                cannon_array[parts].acting=0;
                hatch_array[parts].acted=0;
                hatch_array[parts].acting=0;
                hatch_state_array[parts]=2;
                hatch_array[parts].state=hatch_state_array[parts];
            }
        }
        until parts=0;
        state_switching=1;
    }
                
    if(hatch_state_array[0]=2||hatch_state_array[0]=0)&&(hatch_state_array[1]=2||hatch_state_array[1]=0)&&(hatch_state_array[2]=2||hatch_state_array[2]=0)&&(state_switching=0)
    {
        //set wich hatch stays up and then bring out cannons 
        
        if !(hatch_array[0].state=0)hatch_state_array[0]=3;
        else {cannon_array[0].acted=1;cannon_array[0].acting=0;}
        if !(hatch_array[1].state=0)hatch_state_array[1]=3;
        else {cannon_array[1].acted=1;cannon_array[1].acting=0;}
        if !(hatch_array[2].state=0)hatch_state_array[2]=3;
        else {cannon_array[2].acted=1;cannon_array[2].acting=0;}
        do {zap_hatch=irandom(2);}
        until !(hatch_array[zap_hatch].state=0)
        hatch_state_array[zap_hatch]=4;
                    
        hatch_array[0].state=hatch_state_array[0];
        cannon_array[0].state=hatch_state_array[0];
        hatch_array[1].state=hatch_state_array[1];
        cannon_array[1].state=hatch_state_array[1];
        hatch_array[2].state=hatch_state_array[2];
        cannon_array[2].state=hatch_state_array[2];
        state_switching=1;
    }
                
    if(hatch_state_array[0]=3||hatch_state_array[0]=4||hatch_state_array[0]=0)&&(hatch_state_array[1]=3||hatch_state_array[1]=4||hatch_state_array[1]=0)&&(hatch_state_array[2]=3||hatch_state_array[2]=4||hatch_state_array[2]=0)&&(state_switching=0)&&(cannon_array[0].acted=1)&&(cannon_array[1].acted=1)&&(cannon_array[2].acted=1)
    {
        
        fight_state=1;
        fight_state_current=fight_state;
        cannon_array[0].acted=0;
        cannon_array[1].acted=0;
        cannon_array[2].acted=0;
        cannon_array[0].acting=0;
        cannon_array[1].acting=0;
        cannon_array[2].acting=0;
    }
    state_switching=0;
}

#define scr_airship_shut_hatch
if(hatch_state_array[0]=3||hatch_state_array[0]=5||hatch_state_array[0]=4||hatch_state_array[0]=0)&&(hatch_state_array[1]=3||hatch_state_array[1]=5||hatch_state_array[1]=4||hatch_state_array[1]=0)&&(hatch_state_array[2]=3||hatch_state_array[2]=5||hatch_state_array[2]=4||hatch_state_array[2]=0)&&(state_switching=0)&&!(hatch_state_array[0]=0&&hatch_state_array[1]=0&&hatch_state_array[2]=0)
{
    //shut three hatches and cannons
    var parts=3
    do
    {
        parts-=1;
        if !(hatch_array[parts].state=0)
        {
            hatch_state_array[parts]=1;
            hatch_array[parts].state=hatch_state_array[parts];
            cannon_array[parts].state=hatch_state_array[parts];
        }
        else hatch_state_array[parts]=0;
    }
    until parts=0;
    state_switching=1;
}
                
if(hatch_array[0].acting=0)&&(hatch_array[1].acting=0)&&(hatch_array[2].acting=0)&&(state_switching=0)
{
    //set wich hatch stays up and then bring out cannons 
    fight_state_current=fight_state;
    state_switching=1;
}

state_switching=0;

#define scr_airship_firing
if (cannon_balls_acting=0)&&(cannon_array[zap_hatch].zapped=0)
{ 
//move_cannon_balls
if cannon_balls_move=1&& instance_exists(obj_airship_cannon_ball)&&(start_turn=1)
{  
    obj_airship_cannon_ball.move=1;
    cannon_balls_move=0;
}
start_turn=0;
//cannon right turn
if (cannon_array[2].acted=0)&&(cannon_array[2].acting=0) cannon_array[2].turn=1;
            
//cannon middle turn
if (cannon_array[2].acted=1)&&(cannon_array[1].acted=0)&&(hatch_array[1].acting=0)cannon_array[1].turn=1;
            
//cannon left turn
if (cannon_array[1].acted=1)&&(cannon_array[0].acted=0)&&(hatch_array[0].acting=0)cannon_array[0].turn=1;
            
//end turn
if (cannon_array[0].acted=1)&&(cannon_array[1].acted=1)&&(cannon_array[2].acted=1){global.enemy_acting=0;acted=1}
            
//switch to fight state 2

    
    
}