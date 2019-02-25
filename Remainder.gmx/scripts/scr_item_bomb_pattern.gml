#define scr_item_bomb_pattern
//set element
if (argument0=2) var dfx=obj_fire_attack_fx;
if (argument0=3) var dfx=obj_ice_attack_fx;
if (argument0=4) var dfx=obj_poison_attack_fx;


    //range limite 2 in line 
    if (argument1=0)
    { 

        /*if(argument2>271)&&(argument2<512)initialy =271;
        if(argument2>511)&&(argument2<754) initialy =512;
        if(argument2>753)&&(argument2<993) initialy =753;
        if(argument2>992)&&(argument2<1233) initialy =993;*/
        
        
        if(argument2>511)&&(argument2<754) initialy =271;
        if(argument2>753)&&(argument2<993) initialy =512;
        if(argument2>992)&&(argument2<1233) initialy =753;
        /*if(y>1232)var initialy =1233;*/
        
        if (x>150)&&(x<450)  initialx =155;
        if (x>472)&&(x<750)  initialx =476;
        if (x>790)  initialx =796;
        
        if (initialy=271) reapeating=0
        else reapeating=1
        
    
        repeat(2*reapeating)
        {
            item_aoe=instance_create(initialx,initialy,dfx);
                item_aoe.damage_type_1=obj_item_bomb_fx.damage_type_1;
                item_aoe.damage_1=obj_item_bomb_fx.damage_1;
                item_aoe.damage_type_2=obj_item_bomb_fx.damage_type_2;
                item_aoe.damage_2=obj_item_bomb_fx.damage_2;
                item_aoe.aoe_direction=0;
            
            initialy-=240;
        }
    }
    //hit 2 in line 
    if (argument1=1)
    { 

        if(argument2>271)&&(argument2<512)initialy =271;
        if(argument2>511)&&(argument2<754) initialy =512;
        if(argument2>753)&&(argument2<993) initialy =753;
        if(argument2>992)&&(argument2<1233) initialy =993;
        
        
        /*if(argument2>511)&&(argument2<754) initialy =271;
        if(argument2>753)&&(argument2<993) initialy =512;
        if(argument2>992)&&(argument2<1233) initialy =753;*/
        if(y>1232)var initialy =1233;
        
        if (x>150)&&(x<450)  initialx =155;
        if (x>472)&&(x<750)  initialx =476;
        if (x>790)  initialx =796;
        
        if (initialy=271) reapeating=0
        else reapeating=1
        
    
        repeat(2*reapeating)
        {
            item_aoe=instance_create(initialx,initialy,dfx);
                item_aoe.damage_type_1=obj_item_bomb_fx.damage_type_1;
                item_aoe.damage_1=obj_item_bomb_fx.damage_1;
                item_aoe.damage_type_2=obj_item_bomb_fx.damage_type_2;
                item_aoe.damage_2=obj_item_bomb_fx.damage_2;
                item_aoe.aoe_direction=0;
            
            initialy-=240;
        }
    }

#define scr_item_bomb_pattern_1
//set element
if (argument0=2) var dfx=obj_fire_attack_fx;
if (argument0=3) var dfx=obj_ice_attack_fx;
if (argument0=4) var dfx=obj_poison_attack_fx;


    //range limite 2 in line 
    if (argument1=0)
    { 

        /*if(argument2>271)&&(argument2<512)initialy =271;
        if(argument2>511)&&(argument2<754) initialy =512;
        if(argument2>753)&&(argument2<993) initialy =753;
        if(argument2>992)&&(argument2<1233) initialy =993;*/
        
        
        if(argument2>511)&&(argument2<754) initialy =271;
        if(argument2>753)&&(argument2<993) initialy =512;
        if(argument2>992)&&(argument2<1233) initialy =753;
        /*if(y>1232)var initialy =1233;*/
        
        if (x>150)&&(x<450)  initialx =155;
        if (x>472)&&(x<750)  initialx =476;
        if (x>790)  initialx =796;
        
        if (initialy=271) reapeating=0
        else reapeating=1
        
    
        repeat(2*reapeating)
        {
            item_aoe=instance_create(initialx,initialy,dfx);
                item_aoe.damage_type_1=obj_item_bomb_fx.damage_type_1;
                item_aoe.damage_1=obj_item_bomb_fx.damage_1;
                item_aoe.damage_type_2=obj_item_bomb_fx.damage_type_2;
                item_aoe.damage_2=obj_item_bomb_fx.damage_2;
                item_aoe.aoe_direction=0;
            
            initialy-=240;
        }
    }
    //hit 2 in line 
    if (argument1=1)
    { 

        if(argument2>271)&&(argument2<512)initialy =271;
        if(argument2>511)&&(argument2<754) initialy =512;
        if(argument2>753)&&(argument2<993) initialy =753;
        if(argument2>992)&&(argument2<1233) initialy =993;
        
        
        /*if(argument2>511)&&(argument2<754) initialy =271;
        if(argument2>753)&&(argument2<993) initialy =512;
        if(argument2>992)&&(argument2<1233) initialy =753;*/
        if(y>1232)var initialy =1233;
        
        if (x>150)&&(x<450)  initialx =155;
        if (x>472)&&(x<750)  initialx =476;
        if (x>790)  initialx =796;
        
        if (initialy=271) reapeating=0
        else reapeating=1
        
    
        repeat(2*reapeating)
        {
            item_aoe=instance_create(initialx,initialy,dfx);
                item_aoe.damage_type_1=obj_item_bomb_fx.damage_type_1;
                item_aoe.damage_1=obj_item_bomb_fx.damage_1;
                item_aoe.damage_type_2=obj_item_bomb_fx.damage_type_2;
                item_aoe.damage_2=obj_item_bomb_fx.damage_2;
                item_aoe.aoe_direction=0;
            
            initialy-=240;
        }
    }