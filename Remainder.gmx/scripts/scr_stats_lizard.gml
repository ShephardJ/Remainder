//basic
    if (varient =0)
    {
        init_hp=20;
        hp=20;
        damage_type_1=5;
        damage_1=5;
        damage_type_2=0;
        damage_2=0;
        wind_up=1;
        range=2;
        wind_down=2;
        mouvement_speed=2;
        slash_resistence=0.75;
        pierce_resistence=0.75;
        fire_resistance=1.5;
        ice_resistance=1.5;
        poison_resistance=1.5;
        push_resistance=1;
        sprite_index=spr_lizard_classic;
        attack_type=1;
    }
    //fire
    if (varient =1)
    {
        init_hp=25;
        hp=25;
        damage_type_1=2;
        damage_1=3;
        damage_type_2=5;
        damage_2=2;
        wind_up=1;
        range=2;
        wind_down=2;
        mouvement_speed=2;
        slash_resistence=1;
        pierce_resistence=1;
        fire_resistance=0.5;
        ice_resistance=1.5;
        poison_resistance=1.5;
        push_resistance=1;
        sprite_index=spr_lizard_fire;
        attack_type=1;
    }
    //ice
    if (varient =2)
    {
        init_hp=25;
        hp=25;
        damage_type_1=3;
        damage_1=3;
        damage_type_2=5;
        damage_2=2;
        wind_up=1;
        range=2;
        wind_down=2;
        mouvement_speed=2;
        slash_resistence=1;
        pierce_resistence=1;
        fire_resistance=1.5;
        ice_resistance=0.5;
        poison_resistance=1.5;
        push_resistance=1;
        sprite_index=spr_lizard_ice;
        attack_type=1;
    }
    //poison
    if (varient =3)
    {
        init_hp=25;
        hp=25;
        damage_type_1=4;
        damage_1=3;
        damage_type_2=5;
        damage_2=2;
        wind_up=1;
        range=2;
        wind_down=2;
        mouvement_speed=2;
        slash_resistence=1;
        pierce_resistence=1;
        fire_resistance=1.5;
        ice_resistance=1.5;
        poison_resistance=0.5;
        push_resistance=1;
        sprite_index=spr_lizard_poison;
        attack_type=1;
    }
    //zombie
    if (varient =4)
    {
        init_hp=30;
        hp=30;
        damage_type_1=4;
        damage_1=4;
        damage_type_2=5;
        damage_2=3;
        wind_up=1;
        range=2;
        wind_down=2;
        mouvement_speed=1;
        slash_resistence=0.5;
        pierce_resistence=0.5;
        fire_resistance=3;
        ice_resistance=3;
        poison_resistance=0;
        push_resistance=1;
        sprite_index=spr_lizard_zombie;
        alive=0;
        infected=1;
        attack_type=1;
    }
