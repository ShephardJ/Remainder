 //normal
 if (varient =0)
    {
        init_hp=15;
        hp=15;
        damage_type_1=4;
        damage_1=4;
        damage_type_2=5;
        damage_2=2;
        wind_up=1;
        range=1;
        wind_down=2;
        mouvement_speed=1;
        slash_resistence=1;
        pierce_resistence=1;
        fire_resistance=1.25;
        ice_resistance=1.25;
        poison_resistance=0.5;
        push_resistance=1;
        sprite_index=spr_spider;
        attack_type=3;
        alive=1;
        infected=0;
        sprite_main=spr_spider
        sprite_jump=spr_spider_jump
        sprite_death=spr_spider_death
        sprite_index=sprite_main;
    }
    //fire
    if (varient =1)
    {
        init_hp=20;
        hp=20;
        damage_type_1=4;
        damage_1=4;
        damage_type_2=3;
        damage_2=2;
        wind_up=1;
        range=1;
        wind_down=2;
        mouvement_speed=1;
        slash_resistence=1;
        pierce_resistence=1;
        fire_resistance=0.75;
        ice_resistance=1.5;
        poison_resistance=0.5;
        push_resistance=1;
        sprite_index=spr_spider;
        attack_type=3;
        alive=1;
        infected=0;
        sprite_main=spr_spider_fire
        sprite_jump=spr_spider_jump_fire
        sprite_death=spr_spider_death_fire
        sprite_index=sprite_main;
    }
    //ice
    if (varient =2)
    {
        init_hp=20;
        hp=20;
        damage_type_1=4;
        damage_1=4;
        damage_type_2=3;
        damage_2=2;
        wind_up=1;
        range=1;
        wind_down=2;
        mouvement_speed=1;
        slash_resistence=1;
        pierce_resistence=1;
        fire_resistance=1.25;
        ice_resistance=0.75;
        poison_resistance=0.5;
        push_resistance=1;
        sprite_index=spr_spider;
        attack_type=3;
        alive=1;
        infected=0;
        sprite_main=spr_spider_ice
        sprite_jump=spr_spider_jump_ice
        sprite_death=spr_spider_death_ice
        sprite_index=sprite_main;
    }
    //zombie
    if (varient =3)
    {
        init_hp=25;
        hp=25;
        damage_type_1=4;
        damage_1=6;
        damage_type_2=5;
        damage_2=4;
        wind_up=2;
        range=1;
        wind_down=2;
        mouvement_speed=0.5;
        slash_resistence=0.5;
        pierce_resistence=0.5;
        fire_resistance=1.5;
        ice_resistance=1.5;
        poison_resistance=0;
        push_resistance=1.25;
        sprite_index=spr_spider;
        attack_type=3;
        alive=0;
        infected=1;
        sprite_main=spr_spider_zombie
        sprite_jump=spr_spider_jump_zombie
        sprite_death=spr_spider_death_zombie
        sprite_index=sprite_main;
    }
