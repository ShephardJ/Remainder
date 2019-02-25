//set_shape
var shop_shield_1_shape=irandom_range(1,3);
var shop_shield_1_frame=0;
var shop_shield_1_body=0;
var shop_shield_1_jewel=0;
if (argument0=0)
{
    //set frame
    var shield_random_var=irandom(5);
    if (shield_random_var<5) var shop_shield_1_frame=1;
    else var shop_shield_1_frame=2;
    //set body
    var shield_random_var=irandom(8);
    if (shield_random_var<3) var shop_shield_1_body=1;
    if (shield_random_var>2)&&(shield_random_var<7)  var shop_shield_1_body=2;
    if (shield_random_var=7)  var shop_shield_1_body=3;
    if (shield_random_var=8)
    {
        var element_var =irandom(1)
        if element_var=0 var shop_shield_1_body=5;
        else var shop_shield_1_body=6;
    }
     //set jewel
    var shield_random_var=irandom(8);
    if (shield_random_var<3) var shop_shield_1_jewel=1;
    if (shield_random_var>2)&&(shield_random_var<7)  var shop_shield_1_jewel=2;
    if (shield_random_var=7)  var shop_shield_1_jewel=3;
    if (shield_random_var=8)
    if(shop_shield_1_body>4)
        {
            var element_var =irandom(2)
            if element_var<2 var shop_shield_1_jewel=shop_shield_1_body;
            else 
            {
                if shop_shield_1_body=5 var shop_shield_1_jewel=6;
                if shop_shield_1_body=6 var shop_shield_1_jewel=5;
            }
        }
        else
        {
            var element_var =irandom(1)
            if element_var=0 var shop_shield_1_jewel=5;
            else var shop_shield_1_jewel=6;
        }  
}

if (argument0=1)
{
    //set frame
    var shield_random_var=irandom(5);
    if (shield_random_var<5) var shop_shield_1_frame=2;
    else shop_shield_1_frame=3;
    //set body
    var shield_random_var=irandom(8);
    if (shield_random_var<5) shop_shield_1_body=3;
    if (shield_random_var>4)&&(shield_random_var<8)
    {
        var element_var =irandom(1)
        if element_var=0 shop_shield_1_body=5;
        else shop_shield_1_body=6;
    }
    if (shield_random_var=8)  shop_shield_1_body=4;
    
     //set jewel
    var shield_random_var=irandom(8);
    if (shield_random_var<5) shop_shield_1_jewel=3;
    if (shield_random_var>4)&&(shield_random_var<8)
    if(shop_shield_1_body>4)
        {
            var element_var =irandom(2)
            if element_var<2 shop_shield_1_jewel=shop_shield_1_body;
            else 
            {
                if shop_shield_1_body=5 shop_shield_1_jewel=6;
                if shop_shield_1_body=6 shop_shield_1_jewel=5;
            }
        }
        else
        {
            var element_var =irandom(1)
            if element_var=0 shop_shield_1_jewel=5;
            else shop_shield_1_jewel=6;
        }
    if (shield_random_var=8)  shop_shield_1_jewel=4;
}

if (argument0=2)
{
    //set frame
    var shield_random_var=irandom(5);
    if (shield_random_var<2) shop_shield_1_frame=2;
    else shop_shield_1_frame=3;
    //set body
    var shield_random_var=irandom(5);
    if (shield_random_var<4)
    
    {
        var element_var =irandom(1)
        if element_var=0 shop_shield_1_body=5;
        else shop_shield_1_body=6;
    }
    else  shop_shield_1_body=4;
    
     //set jewel
    var shield_random_var=irandom(5);
    if (shield_random_var<4)
    {
        if(shop_shield_1_body>4)
        {
            var element_var =irandom(2)
            if element_var<2 shop_shield_1_jewel=shop_shield_1_body;
            else 
            {
                if shop_shield_1_body=5 shop_shield_1_jewel=6;
                if shop_shield_1_body=6 shop_shield_1_jewel=5;
            }
        }
        else
        {
            var element_var =irandom(1)
            if element_var=0 shop_shield_1_jewel=5;
            else shop_shield_1_jewel=6;
        }
    }
    if (shield_random_var=5)  shop_shield_1_jewel=4;
}

var shield_id_1=scr_shield_determine_id(shop_shield_1_shape,shop_shield_1_frame,shop_shield_1_body,shop_shield_1_jewel);
shield_id_1+=1;
return shield_id_1
