//set element
if (argument0=2) var dfx=obj_fire_attack_fx;
if (argument0=3) var dfx=obj_ice_attack_fx;
if (argument0=4) var dfx=obj_poison_attack_fx;

//create element instances

if (global.item_id>20)&&(global.item_id<24)||(global.item_id>26)&&(global.item_id<30)
{
    if (argument5=0)
    { 
        var initialx =155;
        var initialy =1233;
    
        repeat(3*argument4)
        {
            item_aoe=instance_create(initialx,initialy,dfx);
            with (item_aoe)
            {
                damage_type_1=argument0;
                damage_1=argument1;
                damage_type_2=argument2;
                damage_2=argument3;
                aoe_direction=0;
            }
            initialx+=320
            if (initialx>805)
            {
                initialx=155;
                initialy-=240;
            }
        }
    }
    if (argument5=1)
    { 
        var initialx =796;
        var initialy =1233;
    
        repeat(3*argument4)
        {
            item_aoe=instance_create(initialx,initialy,dfx);
            with (item_aoe)
            {
                damage_type_1=argument0;
                damage_1=argument1;
                damage_type_2=argument2;
                damage_2=argument3;
                aoe_direction=1;
            }
            initialx-=320
            if (initialx<145)
            {
                initialx=796;
                initialy-=240;
            }
        }
    }
    
}

//create element instances

if (global.item_id>23)&&(global.item_id<27)||(global.item_id>29)&&(global.item_id<33)
{
    if (argument5=1)
    { 
        var initialx =155;
        var initialy =1233;
    
        repeat(2*argument4)
        {
            item_aoe=instance_create(initialx,initialy,dfx);
            with (item_aoe)
            {
                damage_type_1=argument0;
                damage_1=argument1;
                damage_type_2=argument2;
                damage_2=argument3;
                aoe_direction=0;
            }
            initialx+=315
            if (initialx>(155+320))
            {
                initialx=155;
                initialy-=240;
            }
        }
    }
    if (argument5=3)
    { 
        var initialx =796;
        var initialy =1233;
    
        repeat(2*argument4)
        {
            item_aoe=instance_create(initialx,initialy,dfx);
            with (item_aoe)
            {
                damage_type_1=argument0;
                damage_1=argument1;
                damage_type_2=argument2;
                damage_2=argument3;
                aoe_direction=1;
            }
            initialx-=320
            if (initialx<(796-320))
            {
                initialx=796;
                initialy-=240;
            }
        }
    }
    
}
