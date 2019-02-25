//determine weapons
shop_weapon_1_id=scr_shop_generate_weapons(0)
shop_weapon_2_id=scr_shop_generate_weapons(1)
shop_weapon_3_id=scr_shop_generate_weapons(2)

//make sword 1
shop_weapon_1=instance_create(117,1920/2+362,obj_shop_weapons);
shop_weapon_1.weapon_id=shop_weapon_1_id;
//make sword 2
shop_weapon_2=instance_create(452,1920/2+362,obj_shop_weapons);
shop_weapon_2.weapon_id=shop_weapon_2_id;
//make sword 2
shop_weapon_3=instance_create(780,1920/2+362,obj_shop_weapons);
shop_weapon_3.weapon_id=shop_weapon_3_id;
