//determine items

shop_item_1_id=scr_shop_generate_items(0);
shop_item_2_id=scr_shop_generate_items(1);
shop_item_3_id=scr_shop_generate_items(2);

//make item 1
shop_item_1=instance_create(117,1920/2+362,obj_shop_items);
shop_item_1.item_id=shop_item_1_id;
//make item 2
shop_item_2=instance_create(452,1920/2+362,obj_shop_items);
shop_item_2.item_id=shop_item_2_id;
//make item 2
shop_item_3=instance_create(780,1920/2+362,obj_shop_items);
shop_item_3.item_id=shop_item_3_id;
