//hoe pesant
    if (varient =0)
    {
        init_hp=15;
        hp=15;
        damage_type_1=0;
        damage_1=2;
        damage_type_2=0;
        damage_2=0;
        wind_up=2;
        range=2;
        wind_down=1;
        mouvement_speed=1;
        slash_resistence=1;
        pierce_resistence=1;
        fire_resistance=1;
        ice_resistance=1;
        poison_resistance=1;
        push_resistance=1;
        sprite_index=spr_pesant_hoe;
        attack_type=0;
        alive=1;
        infected=0;
    }
    //torch pesant
    if (varient =1)
    {
        init_hp=15;
        hp=15;
        wind_up=4;
        damage_type_1=2;
        damage_1=1.1;
        damage_type_2=0;
        damage_2=0;
        range=1;
        wind_down=3;
        mouvement_speed=1;
        slash_resistence=1;
        pierce_resistence=1;
        fire_resistance=1;
        ice_resistance=1;
        poison_resistance=1;
        push_resistance=1;
        sprite_index=spr_pesant_torch;
        attack_type=0;
        alive=1;
        infected=0;
        scr_determin_player_wait_wait_array();
    }
    //bomb pesant
    if (varient =2)
    {
        init_hp=10;
        hp=10;
        damage_type_1=2;
        damage_1=3;
        damage_type_2=0;
        damage_2=0;
        wind_up=4;
        range=3;
        wind_down=1;
        mouvement_speed=1;
        slash_resistence=1;
        pierce_resistence=1;
        fire_resistance=1;
        ice_resistance=1;
        poison_resistance=1;
        push_resistance=1;
        sprite_index=spr_pesant_bomb;
        attack_type=1;
        alive=1;
        infected=0;
    }
    //shield pesant
    if (varient =3)
    {
        init_hp=15;
        hp=15;
        damage_type_1=5;
        damage_1=1.1;
        damage_type_2=0;
        damage_2=0;
        wind_up=2;
        range=1;
        wind_down=2;
        mouvement_speed=1;
        slash_resistence=1;
        pierce_resistence=1;
        fire_resistance=1.25;
        ice_resistance=1.25;
        poison_resistance=1;
        push_resistance=1;
        sprite_index=spr_pesant_shield;
        attack_type=2;
        alive=1;
        infected=0;
    }
    
    //zombie pesant
    if (varient =4)
    {
        init_hp=10;
        hp=10;
        damage_type_1=5;
        damage_1=3;
        damage_type_2=0;
        damage_2=0;
        wind_up=2;
        range=1;
        wind_down=2;
        mouvement_speed=0.5;
        slash_resistence=0.5;
        pierce_resistence=0.5;
        fire_resistance=1.5;
        ice_resistance=1.5;
        poison_resistance=0;
        push_resistance=0.5;
        sprite_index=spr_pesant_zombie;
        attack_type=2;
        alive=0;
        infected=1;
    }
    
