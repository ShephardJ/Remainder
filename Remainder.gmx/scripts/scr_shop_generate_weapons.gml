var weapon_id_total=0;
do
{
    //cheap weapons
    if argument0=0
    {
        var pick_weapon_class=irandom(6)*10;
        //if sword
        if pick_weapon_class=0
        {
            var specific_weapon=irandom(8)
            if (specific_weapon<6) var pick_specific_weapon=1;
            if (specific_weapon=6)||(specific_weapon=7) var pick_specific_weapon=2
            if (specific_weapon=8)
            {
                var do_a_barrel_roll=irandom(1)
                if (do_a_barrel_roll=0)pick_specific_weapon=4;
                else pick_specific_weapon=5;
            }
        }
        //if sword half elemental
        if pick_weapon_class=10
        {
            var specific_weapon=irandom(1)
            var pick_specific_weapon=specific_weapon+1;
           
        }
        //if big sword
        if pick_weapon_class=20
        {
            var specific_weapon=irandom(8)
            if (specific_weapon<8) var pick_specific_weapon=1;
            else var pick_specific_weapon=2;
           
        }
        //if hammer
        if pick_weapon_class=30
        {
            var specific_weapon=irandom(8)
            if (specific_weapon<8) var pick_specific_weapon=1;
            else var pick_specific_weapon=2;
           
        }
        //if knife
        if pick_weapon_class=40
        {
            var specific_weapon=irandom(8)
            if (specific_weapon<8) 
            {
                var pick_specific_weapon=irandom(2)+1;
            }
            else var pick_specific_weapon=irandom_range(4,6);
        }
        //if spear
        if pick_weapon_class=50
        {
            var pick_specific_weapon=irandom(1)+4;
        }
        //if axe
        if pick_weapon_class=60
        {
            var specific_weapon=irandom(8)
            if (specific_weapon<8) var pick_specific_weapon=1;
            else var pick_specific_weapon=2;
        }
    }
    //mid weapons
    if argument0=1
    {
        var pick_weapon_class=irandom(6)*10;
        //if sword
        if pick_weapon_class=0
        {
            var specific_weapon=irandom(8)
            if (specific_weapon<6) var pick_specific_weapon=2;
            if (specific_weapon=6)||(specific_weapon=7)
            {
                var do_a_barrel_roll=irandom(1)
                if (do_a_barrel_roll=0)pick_specific_weapon=4;
                else pick_specific_weapon=5;
            }
            if (specific_weapon=8)
            {
                var do_a_barrel_roll=irandom(1)
                if (do_a_barrel_roll=0)pick_specific_weapon=3;
                else pick_specific_weapon=6;
            }
        }
        //if sword half elemental
        if pick_weapon_class=10
        {
            var specific_weapon=irandom(4)
            if (specific_weapon<1)
             {
                var do_a_barrel_roll=irandom(1)
                if (do_a_barrel_roll=0)pick_specific_weapon=1;
                else pick_specific_weapon=2;
            }
           if (specific_weapon>0)&&(specific_weapon<4)pick_specific_weapon=3;
           if (specific_weapon=4)
             {
                var do_a_barrel_roll=irandom(1)
                if (do_a_barrel_roll=0)pick_specific_weapon=4;
                else pick_specific_weapon=5;
            }
        }
        //if big sword
        if pick_weapon_class=20
        {
            var specific_weapon=irandom(6)
            if (specific_weapon<6) var pick_specific_weapon=2;
            else var pick_specific_weapon=3;
           
        }
        //if hammer
        if pick_weapon_class=30
        {
            var specific_weapon=irandom(6)
            if (specific_weapon<6) var pick_specific_weapon=2;
            else var pick_specific_weapon=3;
           
        }
        //if knife
        if pick_weapon_class=40
        {
            var specific_weapon=irandom(8)
            if (specific_weapon<8) 
            {
                var pick_specific_weapon=irandom(2)+4;
            }
            else var pick_specific_weapon=irandom_range(7,9);
        }
        //if spear
        if pick_weapon_class=50
        {
            var pick_specific_weapon=irandom(1)+5;
        }
        //if axe
        if pick_weapon_class=60
        {
            var specific_weapon=irandom(8)
            if (specific_weapon<8) var pick_specific_weapon=2;
            else var pick_specific_weapon=3;
        }
    }
    //expensive weapons
    if argument0=2
    {
        var pick_weapon_class=irandom(6)*10;
        //if sword
        if pick_weapon_class=0
        {
            var specific_weapon=irandom(8)
            if (specific_weapon<5) var pick_specific_weapon=3;
            else pick_specific_weapon=6;
        }
        //if sword half elemental
        if pick_weapon_class=10
        {
            var specific_weapon=irandom(4)
            if (specific_weapon<2)
             {
                var do_a_barrel_roll=irandom(1)
                if (do_a_barrel_roll=0)pick_specific_weapon=4;
                else pick_specific_weapon=5;
            }
           else pick_specific_weapon=6;
        }
        //if big sword
        if pick_weapon_class=20
        {
            var pick_specific_weapon=3;
        }
        //if hammer
        if pick_weapon_class=30
        {
            var pick_specific_weapon=3;

        }
        //if knife
        if pick_weapon_class=40
        {
            var pick_specific_weapon=irandom_range(7,9);
        }
        //if spear
        if pick_weapon_class=50
        {
            var pick_specific_weapon=6;
        }
        //if axe
        if pick_weapon_class=60
        {
            var pick_specific_weapon=3;
        }
    }
    var weapon_id_total=pick_specific_weapon+pick_weapon_class;
    
}
until weapon_id_total<global.weapon_id||weapon_id_total>global.weapon_id

return  weapon_id_total
