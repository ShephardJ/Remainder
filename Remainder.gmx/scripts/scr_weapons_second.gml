if global.weapon_id<10 image_index=1;
if(global.weapon_id>10)&&(global.weapon_id<20){image_index=2;if !(instance_exists(obj_weapon_second_2)){half_element=instance_create(x,y,obj_weapon_second_2)};}
if(global.weapon_id>20)&&(global.weapon_id<30)image_index=4;
if(global.weapon_id>30)&&(global.weapon_id<40)image_index=5;
if(global.weapon_id=41)||(global.weapon_id=44)||(global.weapon_id=47)image_index=6;
if(global.weapon_id=42)||(global.weapon_id=45)||(global.weapon_id=48)image_index=7;
if(global.weapon_id=43)||(global.weapon_id=46)||(global.weapon_id=49)image_index=8;
/*if(global.weapon_id=51)||(global.weapon_id=53)||(global.weapon_id=55)image_index=9;*/
if(global.weapon_id=54)||(global.weapon_id=55)||(global.weapon_id=56)image_index=10;
if(global.weapon_id=61)||(global.weapon_id=62)||(global.weapon_id=63)image_index=11;
