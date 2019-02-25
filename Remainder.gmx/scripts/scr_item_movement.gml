//create gust of wind
if (40<global.item_id<43)
{
    with instance_create(argument0-12,1250,obj_wind_2_fx)
    {
     damage_type_1=argument1;
     damage_type_2=argument2;
     push=argument3;
     range=argument4;
    }
}
