//sskeleton 3
    if (varient =0)
    {
        init_hp=5;
        hp=5;
        damage_type_1=5;
        damage_1=3;
        damage_type_2=0;
        damage_2=0;
        wind_up=1;
        range=1;
        wind_down=1;
        mouvement_speed=1;
        slash_resistence=1;
        pierce_resistence=0.5;
        fire_resistance=1;
        ice_resistance=1;
        poison_resistance=0;
        push_resistance=1.5;
        sprite_index=spr_skeleton_head_3;
        attack_type=2;
        alive=0;
        infected=0;
    }
    //skeleton 2
    if (varient =1)
    {
         init_hp=5;
        hp=5;
        damage_type_1=5;
        damage_1=2;
        damage_type_2=0;
        damage_2=0;
        wind_up=1;
        range=1;
        wind_down=1;
        mouvement_speed=1;
        slash_resistence=1;
        pierce_resistence=0.5;
        fire_resistance=1;
        ice_resistance=1;
        poison_resistance=0;
        push_resistance=1.5;
        if (sprite_index=spr_skeleton_head_3){transition_to=spr_skeleton_head_2;sprite_index=spr_skeleton_head_3_to_2}
        else sprite_index=spr_skeleton_head_2;
        attack_type=2;
        alive=0;
        infected=0;
    }
    //skeleton1
    if (varient =2)
    {
         init_hp=5;
        hp=5;
        damage_type_1=5;
        damage_1=1;
        damage_type_2=0;
        damage_2=0;
        wind_up=1;
        range=1;
        wind_down=1;
        mouvement_speed=1;
        slash_resistence=1.25;
        pierce_resistence=1.25;
        fire_resistance=0.75;
        ice_resistance=0.75;
        poison_resistance=0;
        push_resistance=1.25;
        if (sprite_index=spr_skeleton_head_2){transition_to=spr_skeleton_head_1;sprite_index=spr_skeleton_head_2_to_1}
        else sprite_index=spr_skeleton_head_1;
        attack_type=2;
        alive=0;
        infected=0;
    }
    //zombie 3
    if (varient =3)
    {
        init_hp=5;
        hp=5;
        damage_type_1=5;
        damage_1=6;
        damage_type_2=0;
        damage_2=0;
        wind_up=1;
        range=1;
        wind_down=1;
        mouvement_speed=1;
        slash_resistence=0.75;
        pierce_resistence=0.75;
        fire_resistance=1.25;
        ice_resistance=1.25;
        poison_resistance=0;
        push_resistance=0.75;
        sprite_index=spr_zombie_head_3;
        attack_type=2;
        alive=0;
        infected=1;
    }
    
    //zombie 2
    if (varient =4)
    {
        init_hp=5;
        hp=5;
        damage_type_1=5;
        damage_1=4;
        damage_type_2=0;
        damage_2=0;
        wind_up=1;
        range=1;
        wind_down=1;
        mouvement_speed=1;
        slash_resistence=0.75;
        pierce_resistence=0.75;
        fire_resistance=1.25;
        ice_resistance=1.25;
        poison_resistance=0;
        push_resistance=0.75;
        if (sprite_index=spr_zombie_head_3){transition_to=spr_zombie_head_2;sprite_index=spr_zombie_head_3_to_2}
        else sprite_index=spr_zombie_head_2;
        attack_type=2;
        alive=0;
        infected=1;
    }
    //zombie 1
    if (varient =5)
    {
        init_hp=5;
        hp=5;
        damage_type_1=5;
        damage_1=2;
        damage_type_2=0;
        damage_2=0;
        wind_up=1;
        range=1;
        wind_down=1;
        mouvement_speed=1;
        slash_resistence=0.75;
        pierce_resistence=0.75;
        fire_resistance=1.25;
        ice_resistance=1.25;
        poison_resistance=0;
        push_resistance=0.75;
        if (sprite_index=spr_zombie_head_2){transition_to=spr_zombie_head_1;sprite_index=spr_zombie_head_2_to_1}
        else sprite_index=spr_zombie_head_1;
        attack_type=2;
        alive=0;
        infected=1;
    }
