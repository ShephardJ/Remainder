var infection_roll=irandom(2)
    if(infection_roll<2)
    {
        if (damage_taken_type_1=0)
        {
            if place_meeting(x+20,y-240,all)
            {
                hit=instance_place(x+20,y-240,all)
                with hit
                {
                    infected=1;
                }
            }
        }
        if (damage_taken_type_1=1)
        {
            if instance_exists(obj_weapon_slash)
            {
                var specialeffectx=obj_weapon_slash.image_xscale*321;
                if place_meeting(x+specialeffectx,y,all)
                {
                    hit=instance_place(x+specialeffectx,y,all)
                    with hit
                    {
                        infected=1;
                    }
                }
            }
            else
            {
                if place_meeting(x+20,y-240,all)
                {
                    hit=instance_place(x+20,y-240,all)
                    with hit
                    {
                        infected=1;
                    }
                }
            }
        }
        }
