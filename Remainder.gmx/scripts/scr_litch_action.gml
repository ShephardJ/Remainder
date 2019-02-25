#define scr_litch_action
if !(instance_exists(obj_skeleton))&&!(instance_exists(obj_zombie))&&(attacking=0)
{
    if (!(current_range_array=5)) scr_litch_move_back();
    if (moved=0)scr_litch_summon();
}

if (instance_exists(obj_skeleton)||instance_exists(obj_zombie))||(attacking=1)
{    
    scr_litch_attack();
    /*global.enemy_acting=0;*/
    
}

#define scr_litch_summon
//start_attacking
if (!(sprite_index=spr_litch_transition_summon))&&(!(sprite_index=spr_litch_summon))sprite_index=spr_litch_transition_summon;
if moved=0&&(global.enemie_attack_count=0)
{
    //wait for summon bank
    if(summon_bank<summon_cap)
    {
        anim_state=2
        summon_bank+=1;
        state_visual.winding_up=1;
        state_visual.anim_speed=(attack_bank/wind_up);
        state_visual.start_up=1;
        state_visual.mouvement=0;
    }
    //summon
    if(summon_bank=summon_cap)
    {
        //summon vars
        
        anim_state=0
        
        summon_n+=1;
        scr_litch_summoning();
        summon_bank=0;
        summon_start_up=1;
        //visuals
        state_visual.winding_up=0;
        state_visual.winding_down=0;
        state_visual.anim_speed=0;
        
    }
    
}
global.enemy_acting=0;
moved_back=1;

#define scr_litch_summoning
instance_create (1080/2,1920/2,obj_flash)
enemy_x=155;
//spwnvr
var spwncp=9-summon_n*2
if spwncp<3 spwncp=3;
//summon_sound
wizard_summoning_sound=audio_play_sound(snd_litch_summon,5,false);
audio_sound_gain(wizard_summoning_sound,global.vol_fx*0.4,0);


//spwn
var summon_roll= irandom_range(2,spwncp);
global.wait_for_reposition=summon_roll;
do
{
    var enemy_type_roll=irandom((6-summon_n))
    if (enemy_type_roll<0) enemy_type_roll=0;
    if (enemy_type_roll=0)
    {
        var enemy_roll=irandom_range(1,2);
        var zombie=instance_create(enemy_x,271,obj_zombie);
        zombie.varient=enemy_roll;
        zombie.moved_back=1;
        global.enemie_total+=1
    }
    else
    {
        var enemy_roll=irandom_range(0,2);
        var zombie=instance_create(enemy_x,271,obj_skeleton);
        zombie.varient=enemy_roll;
        global.enemie_total+=1
        zombie.moved_back=1;
    }
    enemy_x+=321;
    if enemy_x>800 enemy_x=155
    summon_roll-=1
    }
until summon_roll=0;


#define scr_litch_attack
//start_attacking

    attacking=1;
    //wait for wind up
    if(attack_bank<wind_up)
    {
        anim_state=1;
        attack_bank+=1;
        state_visual.winding_up=1;
        state_visual.anim_speed=(attack_bank/wind_up);
        state_visual.start_up=1;
        state_visual.mouvement=0;
    }
    //attack
    if(attack_bank=wind_up)&&(winding_down=0)
    {
        anim_state=0;
        attack_start_up=1;
        instance_create(x,y,obj_enemie_attack);
        state_visual.winding_up=0;
    }
    //wait for wind down
    if(attack_bank=wind_up)&&(winding_down<wind_down)
    {
        winding_down+=1;
        state_visual.winding_down=1;
        state_visual.anim_speed=(winding_down/wind_down);}
        state_visual.start_up=1;
    //return to normal
    if(attack_bank=wind_up)&&(winding_down=wind_down)
    {
        attacking=0;
        winding_down=0;
        attack_bank=0;
        state_visual.winding_down=0;
        state_visual.anim_speed=0;
    }

global.enemy_acting=0;
moved_back=1;

#define scr_litch_move_back
//start up
if (move_back_start_up=1)
{
    anim_state=3;
    move_back_start_up=0
    sprite_index=spr_litch_move_back;
    image_index=0;
    image_speed=12/60;
    moved=1;
    wizard_move_sound=audio_play_sound(snd_litch_move,5,false);
    audio_sound_gain(wizard_move_sound,global.vol_fx*0.4,0);
}

//move
if (sprite_index=spr_litch_move_back_comeback)&&(image_index>7)
{
    anim_state=0;
    move_back_start_up=1;
    sprite_index=spr_litch;
    moved=0;
}
if (sprite_index=spr_litch_move_back)&&(image_index>7)
{
    if (summon_bank<(summon_cap-1))&&(summon_bank>0)y-=240;
    else y=271;
    wizard_move_sound=audio_play_sound(snd_litch_move,5,false);
    audio_sound_gain(wizard_move_sound,global.vol_fx*0.4,0);
    obj_overlay_test.range_array[current_range_array]=0;
    sprite_index=spr_litch_move_back_comeback;
    image_index=0;
    image_speed=12/60
}