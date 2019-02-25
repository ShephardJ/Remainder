//determine shields

shop_shield_1_id=scr_shop_generate_shields(0)
shop_shield_2_id=scr_shop_generate_shields(1)
shop_shield_3_id=scr_shop_generate_shields(2)

//make shield 1
shop_shield_1=instance_create(117,1920/2+362,obj_shop_shields);
shop_shield_1.shop_shield_id=shop_shield_1_id;
//make shield 2
shop_shield_2=instance_create(452,1920/2+362,obj_shop_shields);
shop_shield_2.shop_shield_id=shop_shield_2_id;
//make shield 2
shop_shield_3=instance_create(780,1920/2+362,obj_shop_shields);
shop_shield_3.shop_shield_id=shop_shield_3_id;
