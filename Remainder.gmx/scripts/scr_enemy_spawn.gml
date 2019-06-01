#define scr_enemy_spawn
//set x coordenate & temporary y coordenate
if (argument0=1)posx=152;
if (argument0=2)posx=473;
if (argument0=3)posx=793;
posy=271;

//check difficulty isn't greatter than power level
if (argument1>global.power_level) argument1=global.power_level;
//change script
if (global.world=0)||(global.world=1){scr_enemy_spawn_easy1(argument0,argument1);return 0}
if (global.world=2)||(global.world=3)||(global.world=4){scr_enemy_spawn_easy2(argument0,argument1);return 0}
if (global.world=5)||(global.world=6){scr_enemy_spawn_easy3(argument0,argument1);return 0}
if (global.world>=11)&&(global.world<21){scr_enemy_spawn_mid_undead(argument0,argument1);return 0}
if (global.world>=21)&&(global.world<31){scr_enemy_spawn_mid_human(argument0,argument1);return 0}
if (global.world>=31)&&(global.world<41){scr_enemy_spawn_mid_lizard(argument0,argument1);return 0}
if (global.world>=41)&&(global.world<51){scr_enemy_spawn_mid_fire(argument0,argument1);return 0}
if (global.world>=51)&&(global.world<61){scr_enemy_spawn_mid_ice(argument0,argument1);return 0}
if (global.world>=61)&&(global.world<71){scr_enemy_spawn_mid_monsters(argument0,argument1);return 0}

if (global.world>=111)&&(global.world<121){scr_enemy_spawn_hard_undead(argument0,argument1);return 0}
if (global.world>=121)&&(global.world<131){scr_enemy_spawn_hard_human(argument0,argument1);return 0}
if (global.world>=131)&&(global.world<141){scr_enemy_spawn_hard_lizard(argument0,argument1);return 0}
if (global.world>=141)&&(global.world<151){scr_enemy_spawn_hard_fire(argument0,argument1);return 0}
if (global.world>=151)&&(global.world<161){scr_enemy_spawn_hard_ice(argument0,argument1);return 0}
if (global.world>=161)&&(global.world<171){scr_enemy_spawn_hard_monsters(argument0,argument1);return 0}


#define scr_enemy_spawn_easy1
argument0=argument0;
//skeleton easy
if(global.world=0)
{
    //easy
    if (argument1=1)
    {
         enemy_role=irandom(1);
         if (enemy_role=0)  
         {
            spawn=instance_create(posx,posy,obj_skeleton);
            with (spawn)
            {
                varient=0;
            }
         }
         if (enemy_role=1) 
         {
            spawn=instance_create(posx,posy,obj_blob);
            with (spawn)
            {
                varient=0;
            }
         }
         global.power_level=global.power_level-1;
    }
    
    //normal
    if (argument1=2)
    {
        enemy_role=irandom(1);
         if (enemy_role=0)
        {
            spawn=instance_create(posx,posy,obj_skeleton);
            with (spawn)
            {
                varient=1;
            }
                
        }
         if (enemy_role=1) 
        {
            spawn=instance_create(posx,posy,obj_blob);
            with (spawn)
            {
                specific_varient=irandom(1);
                if (specific_varient=0) varient=1;
                if (specific_varient=1) varient=2;
            }
        }
        global.power_level=global.power_level-2;
    }
    
    //hard
    if (argument1=3)
    {
        enemy_role=irandom(2);
         if (enemy_role=0) 
        {
            spawn=instance_create(posx,posy,obj_skeleton);
            with (spawn)
            {
               varient=2;
            }
        }
         if (enemy_role=1) 
        {
            spawn=instance_create(posx,posy,obj_blob);
            with (spawn)
            {
                varient=3;
            }
        }
         if (enemy_role=2) 
        {
            spawn=instance_create(posx,posy,obj_syphon);
            with (spawn)
            {
                varient=0;
            }
        }
        global.power_level=global.power_level-3;
    }
}

///////////////////////////////////////////////////////////////////////////////////////////
//world1 spawn list
if(global.world=1)
{
    //easy
    if (argument1=1)
    {
         enemy_role=irandom(4);
         if (enemy_role<=3)  
         {
            spawn=instance_create(posx,posy,obj_skeleton);
            with (spawn)
            {
                specific_varient=irandom(5);
                if (specific_varient<5) varient=1;
                else                    varient=2;
            }
         }
         if (enemy_role=4) 
         {
            spawn=instance_create(posx,posy,obj_blob);
            with (spawn)
            {
                specific_varient=irandom(1);
                if (specific_varient=0) varient=1;
                if (specific_varient=1) varient=2;
            }
         }
         global.power_level=global.power_level-1;
    }
    
    //normal
    if (argument1=2)
    {
        spawn=instance_create(posx,posy,obj_lizard);
        with (spawn)
        {
            specific_varient=irandom(0);
            varient=specific_varient;
        }
            
        global.power_level=global.power_level-5;
    }
    
    //hard
    if (argument1=3)
    {
         enemy_role=irandom(1);
         if (enemy_role=0) 
        {
            spawn=instance_create(posx,posy,obj_lizard);
            with (spawn)
            {
            specific_varient=0;
            varient=specific_varient;
            }
        }
         if (enemy_role=1) 
        {
            spawn=instance_create(posx,posy,obj_zombie);
            with (spawn)
            {
                varient=1;
            }
        }
        global.power_level=global.power_level-6;
    }
}


#define scr_enemy_spawn_easy2
argument0=argument0;
////////////////////////////////////////////////////////////////////////////////////////////
//world5 spawn list
if(global.world=2)
{
    //easy
    if (argument1=1)
    {
         enemy_role=irandom(3);
         if (enemy_role<2)  
         {
            spawn=instance_create(posx,posy,obj_heads);
            with (spawn)
            {
                varient=2;
            }
         }
         if (enemy_role=2)  
         {
            spawn=instance_create(posx,posy,obj_heads);
            with (spawn)
            {
                varient=1
            }
         }
         if (enemy_role=3) 
         {
            spawn=instance_create(posx,posy,obj_skeleton);
            with (spawn)
            {
                varient=1
            }
         }
         global.power_level=global.power_level-1;
    }
    
    //normal
    if (argument1=2)
    {
        enemy_role=irandom(3);
         if (enemy_role<2)
        {
            spawn=instance_create(posx,posy,obj_heads);
            with (spawn)
            {
                specific_varient=irandom(1);
                if (specific_varient=0) varient=4;
                if (specific_varient=1) varient=5; 
            }
                
        }
         if (enemy_role=2) 
        {
            spawn=instance_create(posx,posy,obj_heads);
            with (spawn)
            {
                varient=0;
            }
        }
         if (enemy_role=3) 
        {
            spawn=instance_create(posx,posy,obj_skeleton);
            with (spawn)
            {
                varient=2;
            }
        }
        global.power_level=global.power_level-2;
    }
    
    //hard
    if (argument1=3)
    {
        enemy_role=irandom(4);
         
         if (enemy_role=0)
        {
            spawn=instance_create(posx,posy,obj_heads);
            with (spawn)
            {
                varient=3;
            }
                
        }
        if (enemy_role=1)  
         {
            spawn=instance_create(posx,posy,obj_zombie);
            with (spawn)
            {
                varient=1;
            }
         }
         if (enemy_role=2)  
         {
            spawn=instance_create(posx,posy,obj_zombie);
            with (spawn)
            {
                varient=2
            }
         }
         if (enemy_role=3) 
         {
            spawn=instance_create(posx,posy,obj_skeleton);
            with (spawn)
            {
                varient=2
            }
         }
         if (enemy_role=4) 
         {
            spawn=instance_create(posx,posy,obj_soldier);
            with (spawn)
            {
                varient=3
            }
         }
        global.power_level=global.power_level-4;
    }
}    
///////////////////////////////////////////////////////////////////////////////
if(global.world=3)
{
    spawn=instance_create(posx,posy,obj_golem);
            with (spawn)
            {
                varient=0;
            }
            global.power_level=0;
}
///////////////////////////////////////////////////////////////////////////////////////////
//world1 spawn list
if(global.world=4)
{
    //easy
    if (argument1=1)
    {
         enemy_role=irandom(4);
         if (enemy_role<=3)  
         {
            spawn=instance_create(posx,posy,obj_skeleton);
            with (spawn)
            {
                specific_varient=irandom(5);
                if (specific_varient<5) varient=1;
                else                    varient=2;
            }
         }
         if (enemy_role=4) 
         {
            spawn=instance_create(posx,posy,obj_blob);
            with (spawn)
            {
                specific_varient=irandom(1);
                if (specific_varient=0) varient=1;
                if (specific_varient=1) varient=2;
            }
         }
         global.power_level=global.power_level-1;
    }
    
    //normal
    if (argument1=2)
    {
        spawn=instance_create(posx,posy,obj_spider);
        with (spawn)
        {
            varient=0;
            
        }
            
        global.power_level=global.power_level-4;
    }
    
    //hard
    if (argument1=3)
    {
         enemy_role=irandom(1);
         if (enemy_role=0) 
        {
            spawn=instance_create(posx,posy,obj_lizard);
            with (spawn)
            {
            specific_varient=0;
            varient=specific_varient;
            }
        }
         if (enemy_role=1) 
        {
            spawn=instance_create(posx,posy,obj_zombie);
            with (spawn)
            {
                varient=2;
            }
        }
        global.power_level=global.power_level-4;
    }
}

#define scr_enemy_spawn_easy3
argument0=argument0;
////////////////////////////////////////////////////////////////////////////////////////////
//world5 spawn list
if(global.world=5)
{
    //easy
    if (argument1=1)
    {
         scr_pesant_spawn_3_by_2();
         global.power_level=0;
    }
    
    //normal
    if (argument1=2)
    {
         enemy_role=irandom(1);
         if (enemy_role>0)  
         {
            scr_pesant_spawn_3_by_2();
         }
         
         else
         {
            scr_pesant_spawn_3_by_3();
         }
         
         global.power_level=0;
    }
    
    //hard
    if (argument1=3)
    {
        scr_pesant_spawn_3_by_3();
        global.power_level=0; 
    }
         
    global.wait_for_reposition=1;    
}
///////////////////////////////////////////////////////////////////////////////////////////
//crabs
if(global.world=6)
{
    //easy
    if (argument1=1)
    {
         enemy_role=irandom(1);
         if (enemy_role=0)  
         {
            spawn=instance_create(posx,posy,obj_skeleton);
            with (spawn)
            {
                varient=0;
            }
         }
         if (enemy_role=1) 
         {
            spawn=instance_create(posx,posy,obj_blob);
            with (spawn)
            {
                varient=0;
            }
         }
         global.power_level=global.power_level-1;
    }
    
    //normal
    if (argument1=2)
    {
        enemy_role=irandom(1);
         if (enemy_role=0)
        {
            spawn=instance_create(posx,posy,obj_crab);
            with (spawn)
            {
                varient=0;
            }
                
        }
         if (enemy_role=1) 
        {
            spawn=instance_create(posx,posy,obj_blob);
            with (spawn)
            {
                specific_varient=irandom(1);
                if (specific_varient=0) varient=1;
                if (specific_varient=1) varient=2;
            }
        }
        global.power_level=global.power_level-2;
    }
    
    //hard
    if (argument1=3)
    {
        enemy_role=irandom(2);
         if (enemy_role=0) 
        {
            spawn=instance_create(posx,posy,obj_skeleton);
            with (spawn)
            {
               varient=2;
            }
        }
         if (enemy_role=1) 
        {
            spawn=instance_create(posx,posy,obj_blob);
            with (spawn)
            {
                varient=3;
            }
        }
         if (enemy_role=2) 
        {
            spawn=instance_create(posx,posy,obj_syphon);
            with (spawn)
            {
                varient=0;
            }
        }
        global.power_level=global.power_level-3;
    }
}

#define scr_enemy_spawn_mid_undead
argument0=argument0;
//world 2 spawn list
if(global.world=11)
{
    //easy
    if (argument1=1)
    {
         enemy_role=irandom(4);
         if (enemy_role<3)  
         {
            spawn=instance_create(posx,posy,obj_zombie);
            with (spawn)
            {
                specific_varient=irandom(5);
                if (specific_varient<5) varient=0;
                else                    varient=1;
            }
         }
         if (enemy_role=3)  
         {
            spawn=instance_create(posx,posy,obj_skeleton);
            with (spawn)
            {
                specific_varient=irandom(1);
                if (specific_varient=0) varient=1;
                if (specific_varient=1) varient=2;
            }
         }
         if (enemy_role=4) 
         {
            spawn=instance_create(posx,posy,obj_blob);
            with (spawn)
            {
                specific_varient=irandom(1);
                if (specific_varient=0) varient=1;
                if (specific_varient=1) varient=2;
            }
         }
         global.power_level=global.power_level-2;
    }
    
    //normal
    if (argument1=2)
    {
        enemy_role=irandom(2);
         if (enemy_role<2)
        {
            spawn=instance_create(posx,posy,obj_zombie);
            with (spawn)
            {
                varient=2;
            }
                
        }
         if (enemy_role=2) 
        {
            spawn=instance_create(posx,posy,obj_blob);
            with (spawn)
            {
                specific_varient=irandom(1);
                if (specific_varient=0) varient=1;
                if (specific_varient=1) varient=2;
            }
        }
        global.power_level=global.power_level-3;
    }
    
    //hard
    if (argument1=3)
    {
        spawn=instance_create(posx,posy,obj_zombie);
        with (spawn)
        {
            varient=3;
        }
        global.power_level=global.power_level-5;
    }
}


////////////////////////////////////////////////////////////////////////////////////////////
//heads mid
if(global.world=12)
{
    //easy
    if (argument1=1)
    {
         enemy_role=irandom(3);
         if (enemy_role<2)  
         {
            spawn=instance_create(posx,posy,obj_heads);
            with (spawn)
            {
                varient=0;
            }
         }
         if (enemy_role=2)  
         {
            spawn=instance_create(posx,posy,obj_heads);
            with (spawn)
            {
                varient=1
            }
         }
         if (enemy_role=3) 
         {
            spawn=instance_create(posx,posy,obj_skeleton);
            with (spawn)
            {
                varient=1
            }
         }
         global.power_level=global.power_level-1;
    }
    
    //normal
    if (argument1=2)
    {
        enemy_role=irandom(3);
         if (enemy_role<2)
        {
            spawn=instance_create(posx,posy,obj_heads);
            with (spawn)
            {
                
                specific_varient=irandom(1);
                if (specific_varient=0) varient=4;
                if (specific_varient=1) varient=5;
            }
                
        }
         if (enemy_role=2) 
        {
            spawn=instance_create(posx,posy,obj_heads);
            with (spawn)
            {
                varient=3;
            }
        }
         if (enemy_role=3) 
        {
            spawn=instance_create(posx,posy,obj_skeleton);
            with (spawn)
            {
                specific_varient=irandom(2);
                if (specific_varient=0) varient=0;
                if (specific_varient=1) varient=1;
                if (specific_varient=2) varient=2;
            }
        }
        global.power_level=global.power_level-3;
    }
    
    //hard
    if (argument1=3)
    {
        enemy_role=irandom(4);
         if (enemy_role<2)  
         {
            spawn=instance_create(posx,posy,obj_zombie);
            with (spawn)
            {
                varient=1;
            }
         }
         if (enemy_role=2)  
         {
            spawn=instance_create(posx,posy,obj_zombie);
            with (spawn)
            {
                varient=2
            }
         }
         if (enemy_role=3) 
         {
            spawn=instance_create(posx,posy,obj_skeleton);
            with (spawn)
            {
                varient=2
            }
         }
         if (enemy_role=4) 
         {
            spawn=instance_create(posx,posy,obj_soldier);
            with (spawn)
            {
                varient=3
            }
         }
        global.power_level=global.power_level-4;
    }
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//skeleton easy
if(global.world=13)
{
    //easy
    if (argument1=1)
    {
         enemy_role=irandom(1);
         if (enemy_role=0)  
         {
            spawn=instance_create(posx,posy,obj_skeleton);
            with (spawn)
            {
                varient=irandom(1);
            }
         }
         if (enemy_role=1) 
         {
            spawn=instance_create(posx,posy,obj_blob);
            with (spawn)
            {
                varient=0;
            }
         }
         global.power_level=global.power_level-1;
    }
    
    //normal
    if (argument1=2)
    {
        enemy_role=irandom(1);
         if (enemy_role=0)
        {
            spawn=instance_create(posx,posy,obj_skeleton);
            with (spawn)
            {
                varient=irandom_range(1,2);
            }
                
        }
         if (enemy_role=1) 
        {
            spawn=instance_create(posx,posy,obj_blob);
            with (spawn)
            {
                specific_varient=irandom(1);
                if (specific_varient=0) varient=1;
                if (specific_varient=1) varient=2;
            }
        }
        global.power_level=global.power_level-2;
    }
    
    //hard
    if (argument1=3)
    {
        enemy_role=irandom(2);
        /* if (enemy_role=0) 
        {
            spawn=instance_create(posx,posy,obj_skeleton);
            with (spawn)
            {
               varient=2;
            }
        }*/
         if (enemy_role<2) 
        {
            spawn=instance_create(posx,posy,obj_blob);
            with (spawn)
            {
                varient=irandom_range(3,4);
            }
        }
         if (enemy_role=2) 
        {
            spawn=instance_create(posx,posy,obj_golem);
            with (spawn)
            {
                varient=0;
            }
        }
        global.power_level=global.power_level-3;
    }
}

#define scr_enemy_spawn_mid_human
argument0=argument0;

////////////////////////////////////////////////////////////////////////////////////////////
//world4 spawn list
if(global.world=21)
{
    //easy
    if (argument1=1)
    {
         enemy_role=irandom(2);
         if (enemy_role=0)  
         {
            spawn=instance_create(posx,posy,obj_soldier);
            with (spawn)
            {
                varient=0;
            }
         }
         if (enemy_role=1)  
         {
            spawn=instance_create(posx,posy,obj_soldier);
            with (spawn)
            {
                varient=1
            }
         }
         if (enemy_role=2) 
         {
            spawn=instance_create(posx,posy,obj_soldier);
            with (spawn)
            {
                varient=2
            }
         }
         global.power_level=global.power_level-1;
    }
    
    //normal
    if (argument1=2)
    {
        enemy_role=irandom(3);
         if (enemy_role<2)
        {
            spawn=instance_create(posx,posy,obj_soldier);
            with (spawn)
            {
                varient=2;
            }
                
        }
         if (enemy_role=2) 
        {
            spawn=instance_create(posx,posy,obj_soldier);
            with (spawn)
            {
                varient=3;
            }
        }
         if (enemy_role=3) 
        {
            spawn=instance_create(posx,posy,obj_wizard);
            with (spawn)
            {
                specific_varient=irandom(2);
                if (specific_varient=0) varient=0;
                if (specific_varient=1) varient=2;
                if (specific_varient=2) varient=4;
            }
        }
        global.power_level=global.power_level-3;
    }
    
    //hard
    if (argument1=3)
    {
        enemy_role=irandom(3);
         if (enemy_role=0)  
         {
            spawn=instance_create(posx,posy,obj_soldier);
            with (spawn)
            {
                varient=4;
            }
         }
         if (enemy_role=1)  
         {
            spawn=instance_create(posx,posy,obj_soldier);
            with (spawn)
            {
                varient=5
            }
         }
         if (enemy_role=2) 
         {
            spawn=instance_create(posx,posy,obj_soldier);
            with (spawn)
            {
                varient=6
            }
         }
         if (enemy_role=3) 
         {
            spawn=instance_create(posx,posy,obj_soldier);
            with (spawn)
            {
                varient=7
            }
         }
        global.power_level=global.power_level-4;
    }
}
////////////////////////////////////////////////////////////////////////////////////////////////
//world3 spawn list
if(global.world=22)
{
    //easy
    if (argument1=1)
    {
         enemy_role=irandom(3);
         if (enemy_role<3)  
         {
            spawn=instance_create(posx,posy,obj_wizard);
            with (spawn)
            {
                varient=0;
            }
         }
         if (enemy_role=3) 
         {
            spawn=instance_create(posx,posy,obj_soldier);
            with (spawn)
            {
                varient=2;
            }
         }
         global.power_level=global.power_level-4;
    }
    
    //normal
    if (argument1=2)
    {
        enemy_role=irandom(5);
         if (enemy_role<=4)
        {
            spawn=instance_create(posx,posy,obj_wizard);
            with (spawn)
            {
                varient=4;
            }
                
        }
         if (enemy_role=5) 
        {
            spawn=instance_create(posx,posy,obj_zombie);
            with (spawn)
            {
                specific_varient=irandom(1);
                if (specific_varient=0) varient=1;
                if (specific_varient=1) varient=2;
            }
        }
        global.power_level=global.power_level-4;
    }
    
    //hard
    if (argument1=3)
    {
        enemy_role=irandom(2);
         if (enemy_role=0) 
        {
            spawn=instance_create(posx,posy,obj_wizard);
            with (spawn)
            {
               specific_varient=irandom(2);
                if (specific_varient=0) varient=1;
                if (specific_varient=1) varient=3;
                if (specific_varient=2) varient=5;
            }
        }
         if (enemy_role=1) 
        {
            spawn=instance_create(posx,posy,obj_blob);
            with (spawn)
            {
                specific_varient=irandom(1);
                if (specific_varient=0) varient=1;
                if (specific_varient=1) varient=2;
            }
        }
         if (enemy_role=2) 
        {
            spawn=instance_create(posx,posy,obj_golem);
            with (spawn)
            {
                varient=0;
            }
        }
        global.power_level=global.power_level-5;
    }
}
////////////////////////////////////////////////////////////////////////////////////////////
//world4 spawn list
if(global.world=23)
{
    //easy
    if (argument1=1)
    {
         enemy_role=irandom(2);
         if (enemy_role=0)  
         {
            spawn=instance_create(posx,posy,obj_soldier);
            with (spawn)
            {
                varient=0;
            }
         }
         if (enemy_role=1)  
         {
            spawn=instance_create(posx,posy,obj_soldier);
            with (spawn)
            {
                varient=1
            }
         }
         if (enemy_role=2) 
         {
            spawn=instance_create(posx,posy,obj_soldier);
            with (spawn)
            {
                varient=2
            }
         }
         global.power_level=global.power_level-1;
    }
    
    //normal
    if (argument1=2)
    {
        
        spawn=instance_create(posx,posy,obj_wizard);
        with (spawn)
        {
            specific_varient=irandom(2);
            if (specific_varient=0) varient=0;
            if (specific_varient=1) varient=2;
            if (specific_varient=2) varient=4;
        }
    }
        global.power_level=global.power_level-2;
    
    //hard
    if (argument1=3)
    {
        spawn=instance_create(posx,posy,obj_cleric);
        with (spawn)
        {
            varient=0;
        }
        global.power_level=global.power_level-1;
    }
}
////////////////////////////////////////////////////////////////////////////////////////////
//wrable spawn list
if(global.world=24)
{
    //easy
    if (argument1=1)
    {
         scr_pesant_spawn_3_by_3();
         global.power_level=0;
    }
    
    //normal
    if (argument1=2)
    {
         enemy_role=irandom(2);
         if (enemy_role>0)  
         {
            scr_pesant_spawn_3_by_3();
         }
         
         else
         {
            scr_pesant_spawn_3_by_4();
         }
         
         global.power_level=0;
    }
    
    //hard
    if (argument1=3)
    {
        scr_pesant_spawn_3_by_4();
        global.power_level=0; 
    }
         
    global.wait_for_reposition=1;    
}


#define scr_enemy_spawn_mid_lizard
argument0=argument0;
///////////////////////////////////////////////////////////////////////////////////////////
//world1 spawn list
if(global.world=31)
{
    //easy
    if (argument1=1)
    {
         enemy_role=irandom(5);
         if (enemy_role<=2)  
         {
            spawn=instance_create(posx,posy,obj_skeleton);
            with (spawn)
            {
                specific_varient=irandom(5);
                if (specific_varient<5) varient=1;
                else                    varient=2;
            }
         }
         if /*(enemy_role=2)||*/(enemy_role=3)
         {
            spawn=instance_create(posx,posy,obj_lizard);
            with (spawn)
            {   
                varient=0;  
            }
         }
         if (enemy_role=4)|| (enemy_role=5)
         {
            spawn=instance_create(posx,posy,obj_blob);
            with (spawn)
            {
                specific_varient=irandom(1);
                if (specific_varient=0) varient=1;
                if (specific_varient=1) varient=2;
            }
         }
         global.power_level=global.power_level-1;
    }
    
    //normal
    if (argument1=2)
    {
        spawn=instance_create(posx,posy,obj_lizard);
        with (spawn)
        {
            specific_varient=irandom(3);
            varient=specific_varient;
        }
            
        global.power_level=global.power_level-3;
    }
    
    //hard
    if (argument1=3)
    {
         enemy_role=irandom(1);
         if (enemy_role=0) 
        {
            spawn=instance_create(posx,posy,obj_lizard);
            with (spawn)
            {
            specific_varient=irandom(4);
            varient=specific_varient;
            }
        }
         if (enemy_role=1) 
        {
            spawn=instance_create(posx,posy,obj_zombie);
            with (spawn)
            {
                varient=0;
            }
        }
        global.power_level=global.power_level-4;
    }
}

#define scr_enemy_spawn_mid_fire
argument0=argument0;
///////////////////////////////////////////////////////////////////////////////////////////
//world1 fire spawn list
if(global.world=41)
{
    //easy
    if (argument1=1)
    {
         enemy_role=irandom(4);
         if (enemy_role<=2)  
         {
            spawn=instance_create(posx,posy,obj_skeleton);
            with (spawn)
            {
                specific_varient=irandom(2);
                if (specific_varient<2) varient=1;
                else                    varient=2;
            }
         }
         if (enemy_role>2) 
         {
            spawn=instance_create(posx,posy,obj_blob);
            with (spawn)
            {
                varient=1;
            }
         }
         global.power_level=global.power_level-1;
    }
    
    //normal
    if (argument1=2)
    {
        spawn=instance_create(posx,posy,obj_lizard);
        with (spawn)
        {
            varient=1;
        }
            
        global.power_level=global.power_level-3;
    }
    
    //hard
    if (argument1=3)
    {
         enemy_role=irandom(1);
         if (enemy_role=0) 
        {
            spawn=instance_create(posx,posy,obj_spider);
            with (spawn)
            {
            varient=1;
            }
        }
         if (enemy_role=1) 
        {
            spawn=instance_create(posx,posy,obj_wizard);
            with (spawn)
            {
                varient=0;
            }
        }
        global.power_level=global.power_level-4;
    }
}

argument0=argument0;
//world1 ice spawn list
if(global.world=42)
{
    //easy
    if (argument1=1)
    {
         enemy_role=irandom(4);
         if (enemy_role<=2)  
         {
            spawn=instance_create(posx,posy,obj_skeleton);
            with (spawn)
            {
                specific_varient=irandom(2);
                if (specific_varient<2) varient=1;
                else                    varient=2;
            }
         }
         if (enemy_role>2) 
         {
            spawn=instance_create(posx,posy,obj_blob);
            with (spawn)
            {
               varient=2;
            }
         }
         global.power_level=global.power_level-2;
    }
    
    //normal
    if (argument1=2)
    {
        spawn=instance_create(posx,posy,obj_lizard);
        with (spawn)
        {
            varient=2;
        }
            
        global.power_level=global.power_level-3;
    }
    
    //hard
    if (argument1=3)
    {
         enemy_role=irandom(1);
         if (enemy_role=0) 
        {
            spawn=instance_create(posx,posy,obj_spider);
            with (spawn)
            {
            varient=2
            }
        }
         if (enemy_role=1) 
        {
            spawn=instance_create(posx,posy,obj_wizard);
            with (spawn)
            {
                varient=2;
            }
        }
        global.power_level=global.power_level-4;
    }
}


#define scr_enemy_spawn_mid_ice



#define scr_enemy_spawn_mid_monsters
argument0=argument0;
//monsters mid
if(global.world=61)
{
    //easy
    if (argument1=1)
    {
         enemy_role=irandom(3);
         if (enemy_role=0)  
         {
            spawn=instance_create(posx,posy,obj_skeleton);
            with (spawn)
            {
                varient=1;
            }
         }
         if (enemy_role>0) 
         {
            spawn=instance_create(posx,posy,obj_blob);
            with (spawn)
            {
                varient=irandom(3);
            }
         }
         global.power_level=global.power_level-1;
    }
    
    //normal
    if (argument1=2)
    {
        enemy_role=irandom(1);
         if (enemy_role=0)
        {
            spawn=instance_create(posx,posy,obj_golem);
            with (spawn)
            {
                varient=0;
            }
                
        }
         if (enemy_role=1) 
        {
            spawn=instance_create(posx,posy,obj_blob);
            with (spawn)
            {
                specific_varient=irandom(1);
                if (specific_varient=0) varient=1;
                if (specific_varient=1) varient=2;
            }
        }
        global.power_level=global.power_level-2;
    }
    
    //hard
    if (argument1=3)
    {
        enemy_role=irandom(2);
         if (enemy_role=0) 
        {
            spawn=instance_create(posx,posy,obj_lizard);
            with (spawn)
            {
               varient=irandom_range(1,2);
            }
        }
         if (enemy_role=1) 
        {
            spawn=instance_create(posx,posy,obj_moles);
            with (spawn)
            {
                varient=0;
            }
        }
         if (enemy_role=2) 
        {
            spawn=instance_create(posx,posy,obj_golem);
            with (spawn)
            {
                varient=0;
            }
        }
        global.power_level=global.power_level-3;
    }
}
///////////////////////////////////////////////////////////////////////////////////////////
//moles
if(global.world=62)
{
    //easy
    if (argument1=1)
    {
         enemy_role=irandom(4);
         if (enemy_role<=2)  
         {
            spawn=instance_create(posx,posy,obj_skeleton);
            with (spawn)
            {
                specific_varient=irandom(5);
                if (specific_varient<5) varient=1;
                else                    varient=2;
            }
         }
         if (enemy_role=4)||(enemy_role=3) 
         {
            spawn=instance_create(posx,posy,obj_blob);
            with (spawn)
            {
                specific_varient=irandom(1);
                if (specific_varient=0) varient=1;
                if (specific_varient=1) varient=2;
            }
         }
         global.power_level=global.power_level-1;
    }
    
    //normal
    if (argument1=2)
    {
        enemy_role=irandom(3);
        if (enemy_role<3) 
         {
            spawn=instance_create(posx,posy,obj_moles);
            with (spawn)
            {
                varient=0;
            }
         }  
        if (enemy_role=3) 
         {
            spawn=instance_create(posx,posy,obj_blob);
            with (spawn)
            {
                specific_varient=irandom(2);
                if (specific_varient=0) varient=1;
                if (specific_varient=1) varient=2;
                if (specific_varient=2) varient=3;
            }
         }    
        global.power_level=global.power_level-3;
    }
    
    //hard
    if (argument1=3)
    {
         enemy_role=irandom(1);
         if (enemy_role=0) 
        {
            spawn=instance_create(posx,posy,obj_zombie);
            with (spawn)
            {
            varient=0;
            }
        }
         if (enemy_role=1) 
        {
            spawn=instance_create(posx,posy,obj_golem);
            with (spawn)
            {
                varient=0;
            }
        }
        global.power_level=global.power_level-4;
    }
}
///////////////////////////////////////////////////////////////////////////////////////////
//world1 spawn list
if(global.world=63)
{
    //easy
    if (argument1=1)
    {
         
            spawn=instance_create(posx,posy,obj_blob);
            with (spawn)
            {
                specific_varient=irandom(1);
                if (specific_varient=0) varient=1;
                if (specific_varient=1) varient=2;
            }
         global.power_level=global.power_level-1;
    }
    
    //normal
    if (argument1=2)
    {
        spawn=instance_create(posx,posy,obj_spider);
        with (spawn)
        {
            specific_varient=irandom(2);
            varient=specific_varient;
        }
            
        global.power_level=global.power_level-2;
    }
    
    //hard
    if (argument1=3)
    {
         enemy_role=irandom(1);
         if (enemy_role=0) 
        {
            spawn=instance_create(posx,posy,obj_lizard);
            with (spawn)
            {
            specific_varient=irandom(3);
            varient=specific_varient;
            }
        }
         if (enemy_role=1) 
        {
            spawn=instance_create(posx,posy,obj_golem);
            with (spawn)
            {
                varient=0;
            }
        }
        global.power_level=global.power_level-4;
    }
}
///////////////////////////////////////////////////////////////////////////////////////////
//world1 spawn list
if(global.world=64)
{
    //easy
    if (argument1=1)
    {
         
            spawn=instance_create(posx,posy,obj_blob);
            with (spawn)
            {
                specific_varient=irandom(1);
                if (specific_varient=0) varient=1;
                if (specific_varient=1) varient=2;
            }
         global.power_level=global.power_level-1;
    }
    
    //normal
    if (argument1=2)
    {
        spawn=instance_create(posx,posy,obj_syphon);
        with (spawn)
        {
            specific_varient=0;
            varient=specific_varient;
        }
            
        global.power_level=global.power_level-2;
    }
    
    //hard
    if (argument1=3)
    {
         enemy_role=irandom(1);
         if (enemy_role=0) 
        {
            spawn=instance_create(posx,posy,obj_lizard);
            with (spawn)
            {
            specific_varient=irandom(3);
            varient=specific_varient;
            }
        }
         if (enemy_role=1) 
        {
            spawn=instance_create(posx,posy,obj_golem);
            with (spawn)
            {
                varient=0;
            }
        }
        global.power_level=global.power_level-4;
    }
}
///////////////////////////////////////////////////////////////////////////////////////////
//world1 spawn list
if(global.world=65)
{
    //easy
    if (argument1=1)
    {
         
            spawn=instance_create(posx,posy,obj_blob);
            with (spawn)
            {
                specific_varient=irandom(1);
                if (specific_varient=0) varient=1;
                if (specific_varient=1) varient=2;
            }
         global.power_level=global.power_level-1;
    }
    
    //normal
    if (argument1=2)
    {
        spawn=instance_create(posx,posy,obj_crab);
        with (spawn)
        {
            specific_varient=0;
            varient=specific_varient;
        }
            
        global.power_level=global.power_level-2;
    }
    
    //hard
    if (argument1=3)
    {
         enemy_role=irandom(2);
         if (enemy_role=0) 
        {
            spawn=instance_create(posx,posy,obj_lizard);
            with (spawn)
            {
            specific_varient=irandom(3);
            varient=specific_varient;
            }
        }
         if (enemy_role=1) 
        {
            spawn=instance_create(posx,posy,obj_syphon);
            with (spawn)
            {
                varient=0;
            }
        }
         if (enemy_role=2) 
        {
            spawn=instance_create(posx,posy,obj_crab);
            with (spawn)
            {
                varient=0;
            }
        }
        global.power_level=global.power_level-4;
    }
}

#define scr_enemy_spawn_hard_undead
argument0=argument0;
////////////////////////////////////////////////////////////////////////////////////////////
//undead_hard
if(global.world=111)
{
    //easy
    if (argument1=1)
    {
         enemy_role=irandom(4);
         if (enemy_role<3)  
         {
            spawn=instance_create(posx,posy,obj_zombie);
            with (spawn)
            {
                specific_varient=irandom(5);
                if (specific_varient<5) varient=0;
                else                    varient=1;
            }
         }
         if (enemy_role=3)  
         {
            spawn=instance_create(posx,posy,obj_soldier);
            with (spawn)
            {
                specific_varient=irandom(1);
                if (specific_varient=0) varient=3;
                if (specific_varient=1) varient=7;
            }
         }
         if (enemy_role=4) 
         {
            spawn=instance_create(posx,posy,obj_blob);
            with (spawn)
            {
                specific_varient=irandom(1);
                if (specific_varient=0) varient=1;
                if (specific_varient=1) varient=2;
            }
         }
         global.power_level=global.power_level-1;
    }
    
    //normal
    if (argument1=2)
    {
        enemy_role=irandom(2);
         if (enemy_role<2)
        {
            spawn=instance_create(posx,posy,obj_zombie);
            with (spawn)
            {
                varient=2;
            }
                
        }
         if (enemy_role=2) 
        {
            spawn=instance_create(posx,posy,obj_blob);
            with (spawn)
            {
                specific_varient=irandom(1);
                if (specific_varient=0) varient=1;
                if (specific_varient=1) varient=2;
            }
        }
        global.power_level=global.power_level-3;
    }
    
    //hard
    if (argument1=3)
    {
        enemy_role=irandom(2);
         if (enemy_role<2)
        {
            spawn=instance_create(posx,posy,obj_zombie);
            with (spawn)
            {
                varient=3;
            }
                
        }
         if (enemy_role=2) 
        {
            spawn=instance_create(posx,posy,obj_lizard);
            with (spawn)
            {
                varient=4;
            }
        }
        global.power_level=global.power_level-4;
    }
}
////////////////////////////////////////////////////////////////////////////////////////////
//heads mid
if(global.world=112)
{
    //easy
    if (argument1=1)
    {
         enemy_role=irandom(3);
         if (enemy_role<2)  
         {
            spawn=instance_create(posx,posy,obj_heads);
            with (spawn)
            {
                varient=0;
            }
         }
         if (enemy_role=2)  
         {
            spawn=instance_create(posx,posy,obj_heads);
            with (spawn)
            {
                varient=3
            }
         }
         if (enemy_role=3) 
         {
            spawn=instance_create(posx,posy,obj_skeleton);
            with (spawn)
            {
                varient=2
            }
         }
         global.power_level=global.power_level-1;
    }
    
    //normal
    if (argument1=2)
    {
        enemy_role=irandom(3);
         if (enemy_role<2)
        {
            spawn=instance_create(posx,posy,obj_heads);
            with (spawn)
            {
                varient=3;
            }
                
        }
         if (enemy_role>1) 
        {
            spawn=instance_create(posx,posy,obj_skeleton);
            with (spawn)
            {
                varient=2;
            }
        }
        global.power_level=global.power_level-3;
    }
    
    //hard
    if (argument1=3)
    {
        enemy_role=irandom(4);
         if (enemy_role<2)  
         {
            spawn=instance_create(posx,posy,obj_zombie);
            with (spawn)
            {
                varient=1;
            }
         }
         if (enemy_role=2)  
         {
            spawn=instance_create(posx,posy,obj_zombie);
            with (spawn)
            {
                varient=2
            }
         }
         if (enemy_role=3) 
         {
            spawn=instance_create(posx,posy,obj_skeleton);
            with (spawn)
            {
                varient=2
            }
         }
         if (enemy_role=4) 
         {
            spawn=instance_create(posx,posy,obj_soldier);
            with (spawn)
            {
                varient=3
            }
         }
        global.power_level=global.power_level-4;
    }
}

#define scr_enemy_spawn_hard_human
argument0=argument0;

if(global.world=121)
{
    //hard soldiers
    if (argument1=1)
    {
         enemy_role=irandom(3);
         if (enemy_role<2)  
         {
            spawn=instance_create(posx,posy,obj_soldier);
            with (spawn)
            {
                varient=0;
            }
         }
         if (enemy_role=2)  
         {
            spawn=instance_create(posx,posy,obj_soldier);
            with (spawn)
            {
                varient=1
            }
         }
         if (enemy_role=3) 
         {
            spawn=instance_create(posx,posy,obj_soldier);
            with (spawn)
            {
                varient=2
            }
         }
         global.power_level=global.power_level-1;
    }
    
    //normal
    if (argument1=2)
    {
        enemy_role=irandom(3);
         if (enemy_role<2)
        {
            spawn=instance_create(posx,posy,obj_soldier);
            with (spawn)
            {
                varient=4;
            }
                
        }
         if (enemy_role=2) 
        {
            spawn=instance_create(posx,posy,obj_soldier);
            with (spawn)
            {
                specific_varient=irandom(1);
                if (specific_varient=0) varient=5;
                if (specific_varient=1) varient=6;
            }
        }
         if (enemy_role=3) 
        {
            spawn=instance_create(posx,posy,obj_wizard);
            with (spawn)
            {
                specific_varient=irandom(2);
                if (specific_varient=0) varient=0;
                if (specific_varient=1) varient=2;
                if (specific_varient=2) varient=4;
            }
        }
        global.power_level=global.power_level-3;
    }
    
    //hard
    if (argument1=3)
    {
        enemy_role=irandom(4);
         if (enemy_role<2)  
         {
            spawn=instance_create(posx,posy,obj_soldier);
            with (spawn)
            {
                varient=5;
            }
         }
         if (enemy_role=2)  
         {
            spawn=instance_create(posx,posy,obj_soldier);
            with (spawn)
            {
                varient=6
            }
         }
         if (enemy_role=3) 
         {
            spawn=instance_create(posx,posy,obj_soldier);
            with (spawn)
            {
                varient=7
            }
         }
         if (enemy_role=4) 
         {
            spawn=instance_create(posx,posy,obj_soldier);
            with (spawn)
            {
                varient=7
            }
         }
        global.power_level=global.power_level-4;
    }
}
////////////////////////////////////////////////////////////////////////////////////////////////
//hard wizard
if(global.world=122)
{
    //easy
    if (argument1=1)
    {
         enemy_role=irandom(1);
         if (enemy_role=0)  
         {
            spawn=instance_create(posx,posy,obj_wizard);
            with (spawn)
            {
                varient=0;
            }
         }
         if (enemy_role=1) 
         {
            spawn=instance_create(posx,posy,obj_wizard);
            with (spawn)
            {
                varient=2;
            }
         }
         global.power_level=global.power_level-4;
    }
    
    //normal
    if (argument1=2)
    {
        enemy_role=irandom(5);
         if (enemy_role<=2)
        {
            spawn=instance_create(posx,posy,obj_wizard);
            with (spawn)
            {
                varient=4;
            }
                
        }
        else 
        {
            spawn=instance_create(posx,posy,obj_soldier);
            with (spawn)
            {
                specific_varient=irandom(3);
                if (specific_varient<3) varient=0;
                if (specific_varient=3) varient=4;
            }
        }
        global.power_level=global.power_level-5;
    }
    
    //hard
    if (argument1=3)
    {
        enemy_role=irandom(2);
         if (enemy_role=0) 
        {
            spawn=instance_create(posx,posy,obj_wizard);
            with (spawn)
            {
               specific_varient=irandom(2);
                if (specific_varient=0) varient=1;
                if (specific_varient=1) varient=3;
                if (specific_varient=2) varient=5;
            }
        }
         if (enemy_role=1) 
        {
            spawn=instance_create(posx,posy,obj_blob);
            with (spawn)
            {
                specific_varient=irandom(1);
                if (specific_varient=0) varient=1;
                if (specific_varient=1) varient=2;
            }
        }
         if (enemy_role=2) 
        {
            spawn=instance_create(posx,posy,obj_golem);
            with (spawn)
            {
                varient=0;
            }
        }
        global.power_level=global.power_level-5;
    }
}
////////////////////////////////////////////////////////////////////////////////////////////
//world4 spawn list
if(global.world=123)
{
    //hard soldiers
    if (argument1=1)
    {
         enemy_role=irandom(4);
         if (enemy_role<2)  
         {
            spawn=instance_create(posx,posy,obj_soldier);
            with (spawn)
            {
                varient=5;
            }
         }
         if (enemy_role=2)  
         {
            spawn=instance_create(posx,posy,obj_soldier);
            with (spawn)
            {
                varient=6
            }
         }
         if (enemy_role=3) 
         {
            spawn=instance_create(posx,posy,obj_soldier);
            with (spawn)
            {
                varient=7
            }
         }
         if (enemy_role=4) 
         {
            spawn=instance_create(posx,posy,obj_soldier);
            with (spawn)
            {
                varient=7
            }
         }
         global.power_level=global.power_level-3;
    }
    
    //normal
    if (argument1=2)
    {
        enemy_role=irandom(3);
         if (enemy_role=3)
        {
            spawn=instance_create(posx,posy,obj_cleric);
            with (spawn)
            {
                varient=0;
            }
                
        }
         if (enemy_role<3) 
        {
            spawn=instance_create(posx,posy,obj_wizard);
            with (spawn)
            {
                specific_varient=irandom(2);
                if (specific_varient=0) varient=0;
                if (specific_varient=1) varient=2;
                if (specific_varient=2) varient=4;
            }
        }
        global.power_level=global.power_level-3;
    }
    
    //hard
    if (argument1=3)
    {
        enemy_role=irandom(3);
         if (enemy_role=3)
        {
            spawn=instance_create(posx,posy,obj_cleric);
            with (spawn)
            {
                varient=0;
            }
                
        }
         if (enemy_role<3) 
        {
            spawn=instance_create(posx,posy,obj_wizard);
            with (spawn)
            {
                specific_varient=irandom(2);
                if (specific_varient=0) varient=0;
                if (specific_varient=1) varient=2;
                if (specific_varient=2) varient=4;
            }
        } 
        global.power_level=global.power_level-4;
    }
}

#define scr_enemy_spawn_hard_lizard
argument0=argument0;
//world1 spawn list
if(global.world=131)
{
    //easy
    if (argument1=1)
    {
         enemy_role=irandom(4);
         if (enemy_role<=1)  
         {
            spawn=instance_create(posx,posy,obj_skeleton);
            with (spawn)
            {
                specific_varient=irandom(5);
                if (specific_varient<5) varient=1;
                else                    varient=2;
            }
         }
         if /*(enemy_role=2)||*/(enemy_role=2)
         {
            spawn=instance_create(posx,posy,obj_lizard);
            with (spawn)
            {   
                varient=0;  
            }
         }
         if (enemy_role>2)
         {
            spawn=instance_create(posx,posy,obj_blob);
            with (spawn)
            {
                specific_varient=irandom(1);
                if (specific_varient=0) varient=irandom_range(1,2);
                if (specific_varient=1) varient=3;
            }
         }
         global.power_level=global.power_level-1;
    }
    
    //normal
    if (argument1=2)
    {
        spawn=instance_create(posx,posy,obj_lizard);
        with (spawn)
        {
            specific_varient=irandom(4);
            varient=specific_varient;
        }
            
        global.power_level=global.power_level-3;
    }
    
    //hard
    if (argument1=3)
    {
         enemy_role=irandom(1);
         if (enemy_role=0) 
        {
            spawn=instance_create(posx,posy,obj_moles);
            with (spawn)
            {
            varient=0;
            }
        }
         if (enemy_role=1) 
        {
            spawn=instance_create(posx,posy,obj_zombie);
            with (spawn)
            {
                varient=0;
            }
        }
        global.power_level=global.power_level-4;
    }
}

#define scr_enemy_spawn_hard_fire
argument0=argument0;
///////////////////////////////////////////////////////////////////////////////////////////
//world1 fire spawn list
if(global.world=141)
{
    //easy
    if (argument1=1)
    {
         enemy_role=irandom(4);
         if (enemy_role<=2)  
         {
            spawn=instance_create(posx,posy,obj_skeleton);
            with (spawn)
            {
                specific_varient=irandom(2);
                if (specific_varient<2) varient=1;
                else                    varient=2;
            }
         }
         if (enemy_role>2) 
         {
            spawn=instance_create(posx,posy,obj_blob);
            with (spawn)
            {
                varient=1;
            }
         }
         global.power_level=global.power_level-1;
    }
    
    //normal
    if (argument1=2)
    {
        spawn=instance_create(posx,posy,obj_spider);
        with (spawn)
        {
            varient=1;
        }
            
        global.power_level=global.power_level-3;
    }
    
    //hard
    if (argument1=3)
    {
         enemy_role=irandom(1);
         if (enemy_role=0) 
        {
            spawn=instance_create(posx,posy,obj_lizard);
            with (spawn)
            {
            varient=1;
            }
        }
         if (enemy_role=1) 
        {
            spawn=instance_create(posx,posy,obj_wizard);
            with (spawn)
            {
                varient=0;
            }
        }
        global.power_level=global.power_level-4;
    }
}

argument0=argument0;
//world1 ice spawn list
if(global.world=142)
{
    //easy
    if (argument1=1)
    {
         enemy_role=irandom(4);
         if (enemy_role<=2)  
         {
            spawn=instance_create(posx,posy,obj_skeleton);
            with (spawn)
            {
                specific_varient=irandom(2);
                if (specific_varient<2) varient=1;
                else                    varient=2;
            }
         }
         if (enemy_role>2) 
         {
            spawn=instance_create(posx,posy,obj_blob);
            with (spawn)
            {
               varient=2;
            }
         }
         global.power_level=global.power_level-1;
    }
    
    //normal
    if (argument1=2)
    {
        spawn=instance_create(posx,posy,obj_spider);
        with (spawn)
        {
            varient=2;
        }
            
        global.power_level=global.power_level-3;
    }
    
    //hard
    if (argument1=3)
    {
         enemy_role=irandom(1);
         if (enemy_role=0) 
        {
            spawn=instance_create(posx,posy,obj_lizard);
            with (spawn)
            {
            varient=2
            }
        }
         if (enemy_role=1) 
        {
            spawn=instance_create(posx,posy,obj_wizard);
            with (spawn)
            {
                varient=2;
            }
        }
        global.power_level=global.power_level-4;
    }
}


#define scr_enemy_spawn_hard_ice
argument0=argument0;
//world1 ice spawn list
if(global.world=151)
{
    //easy
    if (argument1=1)
    {
         enemy_role=irandom(4);
         if (enemy_role<=2)  
         {
            spawn=instance_create(posx,posy,obj_skeleton);
            with (spawn)
            {
                specific_varient=irandom(2);
                if (specific_varient<2) varient=1;
                else                    varient=2;
            }
         }
         if (enemy_role>2) 
         {
            spawn=instance_create(posx,posy,obj_blob);
            with (spawn)
            {
               varient=2;
            }
         }
         global.power_level=global.power_level-1;
    }
    
    //normal
    if (argument1=2)
    {
        spawn=instance_create(posx,posy,obj_spider);
        with (spawn)
        {
            varient=2;
        }
            
        global.power_level=global.power_level-3;
    }
    
    //hard
    if (argument1=3)
    {
         enemy_role=irandom(1);
         if (enemy_role=0) 
        {
            spawn=instance_create(posx,posy,obj_lizard);
            with (spawn)
            {
            varient=2
            }
        }
         if (enemy_role=1) 
        {
            spawn=instance_create(posx,posy,obj_wizard);
            with (spawn)
            {
                varient=2;
            }
        }
        global.power_level=global.power_level-4;
    }
}


#define scr_enemy_spawn_hard_monsters
argument0=argument0;
//monsters mid
if(global.world=161)
{
    //easy
    if (argument1=1)
    {
         enemy_role=irandom(3);
         if (enemy_role=0)  
         {
            spawn=instance_create(posx,posy,obj_skeleton);
            with (spawn)
            {
                varient=1;
            }
         }
         if (enemy_role>0) 
         {
            spawn=instance_create(posx,posy,obj_blob);
            with (spawn)
            {
                varient=irandom(3);
            }
         }
         global.power_level=global.power_level-1;
    }
    
    //normal
    if (argument1=2)
    {
        spawn=instance_create(posx,posy,obj_golem);
        with (spawn)
        {
            varient=0;
        }
        global.power_level=global.power_level-2;
    }
    
    //hard
    if (argument1=3)
    {
        enemy_role=irandom(2);
         if (enemy_role=0) 
        {
            spawn=instance_create(posx,posy,obj_lizard);
            with (spawn)
            {
               varient=irandom_range(1,2);
            }
        }
         if (enemy_role=1) 
        {
            spawn=instance_create(posx,posy,obj_moles);
            with (spawn)
            {
                varient=0;
            }
        }
         if (enemy_role=2) 
        {
            spawn=instance_create(posx,posy,obj_golem);
            with (spawn)
            {
                varient=0;
            }
        }
        global.power_level=global.power_level-3;
    }
}
///////////////////////////////////////////////////////////////////////////////////////////
//moles
if(global.world=162)
{
    //easy
    if (argument1=1)
    {
         enemy_role=irandom(4);
         if (enemy_role<=1)  
         {
            spawn=instance_create(posx,posy,obj_skeleton);
            with (spawn)
            {
                specific_varient=irandom(5);
                if (specific_varient<5) varient=1;
                else                    varient=2;
            }
         }
         if (enemy_role>1) 
         {
            spawn=instance_create(posx,posy,obj_blob);
            with (spawn)
            {
                specific_varient=irandom(1);
                if (specific_varient=0) varient=1;
                if (specific_varient=1) varient=2;
            }
         }
         global.power_level=global.power_level-1;
    }
    
    //normal
    if (argument1=2)
    {
        
        spawn=instance_create(posx,posy,obj_moles);
        with (spawn)
        {
            var statssss=irandom(2)
            if statssss<2 varient=0;
            else varient=1
        }
           
        global.power_level=global.power_level-3;
    }
    
    //hard
    if (argument1=3)
    {
         enemy_role=irandom(1);
         if (enemy_role=0) 
        {
            spawn=instance_create(posx,posy,obj_zombie);
            with (spawn)
            {
            varient=0;
            }
        }
         if (enemy_role=1) 
        {
            spawn=instance_create(posx,posy,obj_golem);
            with (spawn)
            {
                varient=0;
            }
        }
        global.power_level=global.power_level-4;
    }
}
///////////////////////////////////////////////////////////////////////////////////////////
//world1 spawn list
if(global.world=163)
{
    //easy
    if (argument1=1)
    {
         
            spawn=instance_create(posx,posy,obj_blob);
            with (spawn)
            {
                specific_varient=irandom(2);
                varient=specific_varient+1;
            }
         global.power_level=global.power_level-1;
    }
    
    //normal
    if (argument1=2)
    {
        spawn=instance_create(posx,posy,obj_spider);
        with (spawn)
        {
            specific_varient=irandom(3);
            varient=specific_varient;
        }
            
        global.power_level=global.power_level-2;
    }
    
    //hard
    if (argument1=3)
    {
         enemy_role=irandom(1);
         if (enemy_role=0) 
        {
            spawn=instance_create(posx,posy,obj_lizard);
            with (spawn)
            {
            specific_varient=irandom(4);
            varient=specific_varient;
            }
        }
         if (enemy_role=1) 
        {
            spawn=instance_create(posx,posy,obj_golem);
            with (spawn)
            {
                varient=0;
            }
        }
        global.power_level=global.power_level-4;
    }
}

///////////////////////////////////////////////////////////////////////////////////////////
//world1 spawn list
if(global.world=164)
{
    //easy
    if (argument1=1)
    {
         
            spawn=instance_create(posx,posy,obj_blob);
            with (spawn)
            {
                specific_varient=irandom(2);
                varient=specific_varient+1;
            }
         global.power_level=global.power_level-1;
    }
    
    //normal
    if (argument1=2)
    {
        spawn=instance_create(posx,posy,obj_syphon);
        with (spawn)
        {
            specific_varient=0;
            varient=specific_varient;
        }
            
        global.power_level=global.power_level-2;
    }
    
    //hard
    if (argument1=3)
    {
         enemy_role=irandom(1);
         if (enemy_role=0) 
        {
            spawn=instance_create(posx,posy,obj_lizard);
            with (spawn)
            {
            specific_varient=irandom(4);
            varient=specific_varient;
            }
        }
         if (enemy_role=1) 
        {
            spawn=instance_create(posx,posy,obj_golem);
            with (spawn)
            {
                varient=0;
            }
        }
        global.power_level=global.power_level-4;
    }
}

///////////////////////////////////////////////////////////////////////////////////////////
//world1 spawn list
if(global.world=165)
{
    //easy
    if (argument1=1)
    {
          enemy_role=irandom(1);
          if enemy_role=0{
                spawn=instance_create(posx,posy,obj_blob);
                with (spawn)
                {
                    specific_varient=irandom(2);
                    varient=specific_varient+1;
                }
          }
          if (enemy_role=1) 
        {
            spawn=instance_create(posx,posy,obj_crab);
            with (spawn)
            {
                varient=0;
            }
        }
          
         global.power_level=global.power_level-1;
    }
    
    //normal
    if (argument1=2)
    {
        spawn=instance_create(posx,posy,obj_crab);
        with (spawn)
        {
            specific_varient=0;
            varient=specific_varient;
        }
            
        global.power_level=global.power_level-2;
    }
    
    //hard
    if (argument1=3)
    {
         enemy_role=irandom(1);
         if (enemy_role=0) 
        {
            spawn=instance_create(posx,posy,obj_lizard);
            with (spawn)
            {
            specific_varient=irandom(4);
            varient=specific_varient;
            }
        }
         if (enemy_role=1) 
        {
            spawn=instance_create(posx,posy,obj_syphon);
            with (spawn)
            {
                varient=0;
            }
        }
        global.power_level=global.power_level-4;
    }
}