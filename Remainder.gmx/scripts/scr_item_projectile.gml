//create bow projectile
if (global.item_id<17)
{
    with instance_create(argument0,1500,obj_item_projectile_fx)
    {
     damage_type_1=argument1;
     damage_1=argument2;
     damage_type_2=argument3;
     damage_2=argument4;
     range=argument5;
    }
}