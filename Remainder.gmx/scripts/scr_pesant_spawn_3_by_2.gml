#define scr_pesant_spawn_3_by_2
enemy_role=irandom(4);
if (enemy_role=0)  
{
    spawn=instance_create(796,1233,obj_pesant);
    with (spawn)
    {
                varient=0;
    }
            
    spawn=instance_create(476,1233,obj_pesant);
    with (spawn)
    {
        var role=irandom(5)
        if role<3 varient=3;
        if role=3  varient=0;
        if role=4  varient=2;
        if role=5  varient=1;
    }
            
    spawn=instance_create(155,1233,obj_pesant);
    with (spawn)
    {
                varient=0;
    }
    
    var role=irandom(1)
    if role=0 role=0;
    else role=2;
            
    spawn=instance_create(796,993,obj_pesant);
    spawn.varient=role;
  
    spawn=instance_create(476,993,obj_pesant);
    with (spawn)
    {
                varient=1;
    }
    
            
    spawn=instance_create(155,993,obj_pesant);
    spawn.varient=role;
}
         
if (enemy_role=1)
{
    spawn=instance_create(796,1233,obj_pesant);
    with (spawn)
    {
                varient=3;
    }
            
    spawn=instance_create(476,1233,obj_pesant);
    with (spawn)
    {
                varient=3;
    }
            
    spawn=instance_create(155,1233,obj_pesant);
    with (spawn)
    {
                varient=3;
    }
            
    spawn=instance_create(796,993,obj_pesant);
    with (spawn)
    {
                varient=2;
    }
            
    spawn=instance_create(476,993,obj_pesant);
    with (spawn)
    {
                varient=irandom(1);
    }
            
    spawn=instance_create(155,993,obj_pesant);
    with (spawn)
    {
                varient=2;
    }
                   
}

/*if (enemy_role=2)
{
    spawn=instance_create(796,1233,obj_pesant);
    with (spawn)
    {
                varient=3;
    }
            
    spawn=instance_create(476,1233,obj_pesant);
    with (spawn)
    {
                varient=0;
    }
            
    spawn=instance_create(155,1233,obj_pesant);
    with (spawn)
    {
                varient=3;
    }
            
    spawn=instance_create(796,993,obj_pesant);
    with (spawn)
    {
                varient=2;
    }
            
    spawn=instance_create(476,993,obj_pesant);
    with (spawn)
    {
                var role=irandom(5)
                if role<3 varient=0;
                if role=3||role=4  varient=3;
                if role=5  varient=4;
    }
            
    spawn=instance_create(155,993,obj_pesant);
    with (spawn)
    {
                varient=2;
    }
                   
}*/
         

if (enemy_role=2)
{
    spawn=instance_create(796,1233,obj_pesant);
    with (spawn)
    {
                varient=3;
    }
            
    spawn=instance_create(476,1233,obj_pesant);
    with (spawn)
    {
                var role=irandom(5)
                if role<3  varient=3;
                if role=3  varient=0;
                if role=4  varient=2;
                if role=5  varient=1;
    }
            
    spawn=instance_create(155,1233,obj_pesant);
    with (spawn)
    {
                varient=3;
    }
            
    spawn=instance_create(796,993,obj_pesant);
    with (spawn)
    {
                varient=1;
    }
            
    spawn=instance_create(476,993,obj_pesant);
    with (spawn)
    {
                var role=irandom(5)
                if role<3 varient=0;
                if role=3||role=4  varient=3;
                if role=5  varient=4;
    }
            
    spawn=instance_create(155,993,obj_pesant);
    with (spawn)
    {
                varient=1;
    }
                   
}

if (enemy_role=3)
{
    var prole=irandom(2);
    
    spawn=instance_create(796,1233,obj_pesant);
    with (spawn)
    {
               if prole=0 varient=2;
               else varient=0;
    }
            
    spawn=instance_create(476,1233,obj_pesant);
    with (spawn)
    {
                varient=3;
    }
            
    spawn=instance_create(155,1233,obj_pesant);
    with (spawn)
    {
                if prole=0 varient=2;
               else varient=0;
    }
    
    var prole=irandom(2);
    spawn=instance_create(796,993,obj_pesant);
    with (spawn)
    {
                if prole=0 varient=2;
               else varient=0;
    }
            
    spawn=instance_create(476,993,obj_pesant);
    with (spawn)
    {
        varient=3;
    }
            
    spawn=instance_create(155,993,obj_pesant);
    with (spawn)
    {
                if prole=0 varient=2;
               else varient=0;
    }
                   
}

if (enemy_role=4)
{
    var prole=irandom(1);
    
    spawn=instance_create(796,1233,obj_pesant);
    with (spawn)
    {
               if prole=0 varient=3;
               else varient=0;
    }
            
    spawn=instance_create(476,1233,obj_pesant);
    with (spawn)
    {
                var role=irandom(5)
                if role<3  varient=3;
                if role=3  varient=0;
                if role=4  varient=2;
                if role=5  varient=1;
    }
            
    spawn=instance_create(155,1233,obj_pesant);
    with (spawn)
    {
                if prole=0 varient=3;
               else varient=0;
    }
            
    spawn=instance_create(796,993,obj_pesant);
    with (spawn)
    {
                varient=1;
    }
            
    spawn=instance_create(476,993,obj_pesant);
    with (spawn)
    {
                var role=irandom(5)
                if role<3 varient=0;
                if role=3||role=4  varient=3;
                if role=5  varient=4;
    }
            
    spawn=instance_create(155,993,obj_pesant);
    with (spawn)
    {
                varient=1;
    }
                   
}

#define scr_pesant_spawn_3_by_3
enemy_role=irandom(3);
         /*if (enemy_role=0)  
         {
            spawn=instance_create(796,1233,obj_pesant);
            with (spawn)
            {
                varient=3;
            }
            
            spawn=instance_create(476,1233,obj_pesant);
            with (spawn)
            {
                varient=3;
            }
            
            spawn=instance_create(155,1233,obj_pesant);
            with (spawn)
            {
                varient=3;
            }
            
            spawn=instance_create(796,993,obj_pesant);
            with (spawn)
            {
                varient=1;
            }
            
            spawn=instance_create(476,993,obj_pesant);
            with (spawn)
            {
                varient=0;
            }
            
            spawn=instance_create(155,993,obj_pesant);
            with (spawn)
            {
                varient=1;
            }
            
            spawn=instance_create(796,753,obj_pesant);
            with (spawn)
            {
                varient=2;
            }
            
            spawn=instance_create(476,753,obj_pesant);
            with (spawn)
            {
                varient=2;
            }
            
            spawn=instance_create(155,753,obj_pesant);
            with (spawn)
            {
                varient=2;
            }
            
         }*/
         
         if (enemy_role=0) 
         {
            spawn=instance_create(796,1233,obj_pesant);
            with (spawn)
            {
                varient=3;
            }
            
            spawn=instance_create(476,1233,obj_pesant);
            with (spawn)
            {
                varient=0;
            }
            
            spawn=instance_create(155,1233,obj_pesant);
            with (spawn)
            {
                varient=3;
            }
            
            spawn=instance_create(796,993,obj_pesant);
            with (spawn)
            {
                varient=1;
            }
            
            spawn=instance_create(476,993,obj_pesant);
            with (spawn)
            {
                varient=0;
            }
            
            spawn=instance_create(155,993,obj_pesant);
            with (spawn)
            {
                varient=1;
            }
            
            spawn=instance_create(796,753,obj_pesant);
            with (spawn)
            {
                varient=2;
            }
            
            spawn=instance_create(476,753,obj_pesant);
            with (spawn)
            {
                varient=0;
            }
            
            spawn=instance_create(155,753,obj_pesant);
            with (spawn)
            {
                varient=2;
            }
            
         }
         
         if (enemy_role=1) 
         {
            var role=irandom(1)
            if role=0 role=0;
            else role=3;
            
            spawn=instance_create(796,1233,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(476,1233,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(155,1233,obj_pesant);
            spawn.varient=role;
            
            role=irandom(1)
            if role=0 role=0;
            else role=2;
            
            spawn=instance_create(796,993,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(155,993,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(476,993,obj_pesant);
            with (spawn)
            {
                role=irandom(6)
                if role<4 varient=1;
                if role=4||role=5  varient=4;
                if role=6  varient=0;
            }

            role=irandom(1)
            if role=0 role=0;
            else role=2;
            
            spawn=instance_create(796,753,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(476,753,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(155,753,obj_pesant);
            spawn.varient=role;
            
         }  
         
         if (enemy_role=2) 
         {
            var role=irandom(4)
            if role<3 role=0;
            if role=3 role=4;
            if role=4 role=1;
            
            spawn=instance_create(796,1233,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(476,1233,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(155,1233,obj_pesant);
            spawn.varient=role;
            
            role=irandom(1)
            if role=0 role=0;
            else role=2;
            
            spawn=instance_create(796,993,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(155,993,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(476,993,obj_pesant);
            with (spawn)
            {
                var role=irandom(6)
                if role<4 varient=1;
                if role=4||role=5  varient=4;
                if role=6  varient=0;
            }
            
            role=irandom(1)
            if role=0 role=4;
            else role=2;
            
            spawn=instance_create(796,753,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(476,753,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(155,753,obj_pesant);
            spawn.varient=role;
         }
         
         if (enemy_role=3) 
         {
            var role=irandom(4)
            if role<2 role=0;
            if role=2 role=2;
            if role=3 role=4;
            if role=4 role=1;
            
            spawn=instance_create(796,1233,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(476,1233,obj_pesant);
            var prole=irandom(1);
            if prole=0 spawn.varient=role;
            else spawn.varient=2;
            
            spawn=instance_create(155,1233,obj_pesant);
            spawn.varient=role;
            
            role=irandom(2)
            if role=0 role=0;
            if role=1 role=2;
            if role=3 role=1;
            
            spawn=instance_create(796,993,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(155,993,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(476,993,obj_pesant);
            with (spawn)
            {
                var role=irandom(6)
                if role<3 varient=1;
                if role=3 varient=2;
                if role=4||role=5  varient=4;
                if role=6  varient=0;
            }
            
            role=irandom(1)
            if role=0 role=4;
            else role=2;
            
            spawn=instance_create(796,753,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(476,753,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(155,753,obj_pesant);
            spawn.varient=role;
         }
         
         global.power_level=0;


#define scr_pesant_spawn_3_by_4
enemy_role=irandom(1);
         if (enemy_role=0) 
         {
            var role=irandom(1)
            if role=0 role=0;
            else role=3;
            spawn=instance_create(796,1233,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(476,1233,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(155,1233,obj_pesant);
            spawn.varient=role;
            
            var role=irandom(1)
            if role=0 role=0;
            else role=2;
            
            spawn=instance_create(796,993,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(155,993,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(476,993,obj_pesant);
            with (spawn)
            {
                role=irandom(6)
                if role<4 varient=1;
                if role=4||role=5  varient=4;
                if role=6  varient=0;
            }
            
            var role=irandom(1)
            if role=0 role=0;
            else role=2;
            
            spawn=instance_create(796,753,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(155,753,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(476,753,obj_pesant);
            with (spawn)
            {
                role=irandom(6)
                if role<4 varient=1;
                if role=4||role=5  varient=4;
                if role=6  varient=0;
            }
            
            var role=irandom(1)
            if role=0 role=0;
            else role=2;
            spawn=instance_create(796,512,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(476,512,obj_pesant);
            with (spawn)
            {
                varient=0;
            }
            
            spawn=instance_create(155,512,obj_pesant);
            spawn.varient=role;
            
         }
         
         if (enemy_role=1) 
         {
            var role=irandom(1)
            if role=0 role=0;
            else role=3;
            
            spawn=instance_create(476,1233,obj_pesant);
            spawn.varient=role;
            
            role=irandom(6)
                if role<4 role=1;
                if role=4||role=5  role=4;
                if role=6  role=0;
            
            spawn=instance_create(796,1233,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(155,1233,obj_pesant);
            spawn.varient=role;
            
            var role=irandom(1)
            if role=0 role=0;
            else role=1;
            
            spawn=instance_create(796,993,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(155,993,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(476,993,obj_pesant);
            with (spawn)
            {
                role=irandom(6)
                if role<6 varient=1;
                if role=6  varient=0;
            }
            
            var role=irandom(1)
            if role=0 role=0;
            else role=2;
            
            spawn=instance_create(476,753,obj_pesant);
            spawn.varient=role;
            
            role=irandom(6)
                if role<4 role=1;
                if role=4||role=5  role=4;
                if role=6  role=0;
            
            spawn=instance_create(796,753,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(155,753,obj_pesant);
            spawn.varient=role;
            
            var role=irandom(1)
            if role=0 role=0;
            else role=2;
            spawn=instance_create(796,512,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(476,512,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(155,512,obj_pesant);
            spawn.varient=role;
            
         }

#define scr_pesant_spawn_3_by_5
if argument0=8||argument0=12
{
enemy_role=irandom(1);
         if (enemy_role=0) 
         {
            var role=irandom(1)
            if role=0 role=0;
            else role=3;
            spawn=instance_create(796,1233,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(476,1233,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(155,1233,obj_pesant);
            spawn.varient=role;
            
            var role=irandom(1)
            if role=0 role=0;
            else role=2;
            
            spawn=instance_create(796,993,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(155,993,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(476,993,obj_pesant);
            with (spawn)
            {
                role=irandom(6)
                if role<4 varient=1;
                if role=4||role=5  varient=4;
                if role=6  varient=0;
            }
            
            var role=irandom(2)
            if role=0 role=0;
            if role=1 role=3;
            if role=2 role=2
            spawn=instance_create(796,753,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(155,753,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(476,753,obj_pesant);
            with (spawn)
            {
                role=irandom(6)
                if role<4 varient=1;
                if role=4||role=5  varient=4;
                if role=6  varient=0;
            }
            
            var role=irandom(1)
            if role=0 role=0;
            else role=2;
            spawn=instance_create(796,512,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(155,512,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(476,512,obj_pesant);
            with (spawn)
            {
                varient=0;
            }
            
            
            var role=irandom(1)
            if role=0 role=0;
            else role=2;
            spawn=instance_create(796,271,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(155,271,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(476,271,obj_cleric_boss);
            spawn.varient=0;
            
         }
         
         
///////////////////////////////////////////////////////////////////////////////////////////////////////////////         
         if (enemy_role=1) 
         {
            var role=irandom(1)
            if role=0 role=0;
            else role=3;
            
            spawn=instance_create(476,1233,obj_pesant);
            spawn.varient=role;
            
            role=irandom(6)
                if role<4 role=1;
                if role=4||role=5  role=4;
                if role=6  role=0;
            
            spawn=instance_create(796,1233,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(155,1233,obj_pesant);
            spawn.varient=role;
            
            var role=irandom(1)
            if role=0 role=0;
            else role=1;
            
            spawn=instance_create(796,993,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(155,993,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(476,993,obj_pesant);
            with (spawn)
            {
                role=irandom(6)
                if role<6 varient=1;
                if role=6  varient=0;
            }
            
            var role=irandom(1)
            if role=0 role=0;
            else role=2;
            
            spawn=instance_create(476,753,obj_pesant);
            spawn.varient=role;
            
            role=irandom(6)
                if role<4 role=1;
                if role=4||role=5  role=4;
                if role=6  role=0;
            
            spawn=instance_create(796,753,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(155,753,obj_pesant);
            spawn.varient=role;
            
            var role=irandom(1)
            if role=0 role=0;
            else role=2;
            spawn=instance_create(796,512,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(476,512,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(155,512,obj_pesant);
            spawn.varient=role;
            
            var role=irandom(1)
            if role=0 role=0;
            else role=2;
            spawn=instance_create(796,271,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(155,271,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(476,271,obj_cleric_boss);
            spawn.varient=0;
            
            
         }
}
if argument0=4
{
        enemy_role=irandom(1);
         if (enemy_role=0) 
         {
            var role=irandom(1)
            if role=0 role=0;
            else role=3;
            spawn=instance_create(796,1233,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(476,1233,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(155,1233,obj_pesant);
            spawn.varient=role;
            
            var role=irandom(1)
            if role=0 role=0;
            else role=2;
            
            spawn=instance_create(796,993,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(155,993,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(476,993,obj_pesant);
            with (spawn)
            {
                role=irandom(6)
                if role<4 varient=1;
                if role=4||role=5  varient=4;
                if role=6  varient=0;
            }
            
            var role=irandom(1)
            if role=0 role=0;
            else role=2;
            
            spawn=instance_create(796,753,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(155,753,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(476,753,obj_cleric_boss);
            spawn.varient=0;
            
            var role=irandom(1)
            if role=0 role=0;
            else role=2;
            spawn=instance_create(796,512,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(476,512,obj_pesant);
            with (spawn)
            {
                varient=0;
            }
            
            spawn=instance_create(155,512,obj_pesant);
            spawn.varient=role;
            
         }
         
         if (enemy_role=1) 
         {
            var role=irandom(1)
            if role=0 role=0;
            else role=3;
            
            spawn=instance_create(476,1233,obj_pesant);
            spawn.varient=role;
            
            role=irandom(6)
                if role<4 role=1;
                if role=4||role=5  role=4;
                if role=6  role=0;
            
            spawn=instance_create(796,1233,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(155,1233,obj_pesant);
            spawn.varient=role;
            
            var role=irandom(1)
            if role=0 role=0;
            else role=1;
            
            spawn=instance_create(796,993,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(155,993,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(476,993,obj_pesant);
            with (spawn)
            {
                role=irandom(6)
                if role<6 varient=1;
                if role=6  varient=0;
            }
            
            var role=irandom(1)
            if role=0 role=0;
            else role=2;
            
            spawn=instance_create(476,753,obj_pesant);
            spawn.varient=role;
            
            role=irandom(6)
                if role<4 role=1;
                if role=4||role=5  role=4;
                if role=6  role=0;
            
            spawn=instance_create(796,753,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(155,753,obj_pesant);
            spawn.varient=role;
            
            var role=irandom(1)
            if role=0 role=0;
            else role=2;
            spawn=instance_create(796,512,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(476,512,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(155,512,obj_pesant);
            spawn.varient=role;
            
            spawn=instance_create(476,271,obj_cleric_boss);
            spawn.varient=0;
            
         }


}