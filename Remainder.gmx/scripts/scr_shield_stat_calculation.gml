//shape
if (argument0>0)
{
    //standard
    if (argument0=1)
    {
        var shield_res_s1=1/6;
        var shield_res_pi1=1/6;
        var shield_res_f1=1/6;
        var shield_res_i1=1/6;
        var shield_res_po1=0.5
        var shield_res_pu1=1/6;
        var shield_hp1=5;
    }
    //tower
    if (argument0=2)
    {
        var shield_res_s1=0;
        var shield_res_pi1=0;
        var shield_res_f1=0.45;
        var shield_res_i1=0.45;
        var shield_res_po1=0.5;
        var shield_res_pu1=-0.1;
        var shield_hp1=10;
    }
    //buckler
    if (argument0=3)
    {
        var shield_res_s1=2/6;
        var shield_res_pi1=2/6;
        var shield_res_f1=2/6;
        var shield_res_i1=2/6;
        var shield_res_po1=0.5;
        var shield_res_pu1=2/6;
        var shield_hp1=0;
    }
    
}

//frame
if (argument1>0)
{
    //bronze
    if (argument1=1)
    {
        var shield_res_s2=1;
        var shield_res_pi2=1;
        var shield_res_f2=1;
        var shield_res_i2=1;
        var shield_res_po2=1;
        var shield_res_pu2=1;
        var shield_hp2=0;
    }
    //silver
    if (argument1=2)
    {
        var shield_res_s2=5/6;
        var shield_res_pi2=5/6;
        var shield_res_f2=5/6;
        var shield_res_i2=5/6;
        var shield_res_po2=1;
        var shield_res_pu2=5/6;
        var shield_hp2=2;
    }
    //gold
    if (argument1=3)
    {
        var shield_res_s2=4/6;
        var shield_res_pi2=4/6;
        var shield_res_f2=4/6;
        var shield_res_i2=4/6;
        var shield_res_po2=1;
        var shield_res_pu2=4/6;
        var shield_hp2=5;
    }
    
}

//body
if (argument2>0)
{
    //wood
    if (argument2=1)
    {
        var shield_res_s3=0.45;
        var shield_res_pi3=0.45;
        var shield_res_f3=0.75;
        var shield_res_i3=0.75;
        var shield_res_po3=0.5;
        var shield_res_pu3=0.45;
        var shield_hp3=5;
    }
    //bronze
    if (argument2=2)
    {
        var shield_res_s3=0.40;
        var shield_res_pi3=0.40;
        var shield_res_f3=0.6;
        var shield_res_i3=0.6;
        var shield_res_po3=0.5;
        var shield_res_pu3=0.40;
        var shield_hp3=5;
    }
    //silver
    if (argument2=3)
    {
        var shield_res_s3=0.3;
        var shield_res_pi3=0.3;
        var shield_res_f3=0.4;
        var shield_res_i3=0.4;
        var shield_res_po3=0.5;
        var shield_res_pu3=0.3;
        var shield_hp3=10;
    }
    //gold
    if (argument2=4)
    {
        var shield_res_s3=0.15;
        var shield_res_pi3=0.15;
        var shield_res_f3=0.3;
        var shield_res_i3=0.3;
        var shield_res_po3=0.5;
        var shield_res_pu3=0.15;
        var shield_hp3=15;
    }
    //red
    if (argument2=5)
    {
        var shield_res_s3=0.45;
        var shield_res_pi3=0.45;
        var shield_res_f3=0;
        var shield_res_i3=0.15;
        var shield_res_po3=0.5;
        var shield_res_pu3=0.45;
        var shield_hp3=5;
    }
    //blue
    if (argument2=6)
    {
        var shield_res_s3=0.45;
        var shield_res_pi3=0.45;
        var shield_res_f3=0.15;
        var shield_res_i3=0;
        var shield_res_po3=0.5;
        var shield_res_pu3=0.45;
        var shield_hp3=5;
    }
}
//jewel
if (argument3>0)
{
    //wood
    if (argument3=1)
    {
        var shield_res_s4=-0.05;
        var shield_res_pi4=-0.05;
        var shield_res_f4=0.05;
        var shield_res_i4=0.05;
        var shield_res_po4=0;
        var shield_res_pu4=-0.05;
    }
    //bronze
    if (argument3=2)
    {
        var shield_res_s4=-0.08;
        var shield_res_pi4=-0.08;
        var shield_res_f4=0.04;
        var shield_res_i4=0.04;
        var shield_res_po4=0;
        var shield_res_pu4=-0.08;
    }
    //silver
    if (argument3=3)
    {
        var shield_res_s4=-0.1;
        var shield_res_pi4=-0.1;
        var shield_res_f4=0.03;
        var shield_res_i4=0.03;
        var shield_res_po4=0;
        var shield_res_pu4=-0.1;
    }
    //gold
    if (argument3=4)
    {
        var shield_res_s4=-0.15;
        var shield_res_pi4=-0.15;
        var shield_res_f4=0.02;
        var shield_res_i4=0.02;
        var shield_res_po4=0;
        var shield_res_pu4=-0.15;
    }
    //red
    if (argument3=5)
    {
        var shield_res_s4=0;
        var shield_res_pi4=0;
        var shield_res_f4=-0.3;
        var shield_res_i4=0.15;
        var shield_res_po4=0;
        var shield_res_pu4=0;
    }
    //blue
    if (argument3=6)
    {
        var shield_res_s4=0;
        var shield_res_pi4=0;
        var shield_res_f4=0.15;
        var shield_res_i4=-0.3;
        var shield_res_po4=0;
        var shield_res_pu4=0;
    }
}

//calculation
shield_res_s=(shield_res_s1+shield_res_s3+shield_res_s4)*shield_res_s2;
shield_res_pi=(shield_res_pi1+shield_res_pi3+shield_res_pi4)*+shield_res_pi2;
shield_res_f=(shield_res_f1+shield_res_f3+shield_res_f4)*shield_res_f2;
shield_res_i=(shield_res_i1+shield_res_i3+shield_res_i4)*shield_res_i2;
shield_res_po=(shield_res_po1+shield_res_po3+shield_res_po4)*shield_res_po2;
shield_res_pu=(shield_res_pu1+shield_res_pu3+shield_res_pu4)*shield_res_pu2;
shield_hp=shield_hp1+shield_hp2+shield_hp3;

if(shield_res_s<=0.15)shield_res_s=0;
if(shield_res_pi<=0.15)shield_res_pi=0;
if(shield_res_f<=0.2)shield_res_f=0;
if(shield_res_i<=0.2)shield_res_i=0;
if(shield_res_po<=0.2)shield_res_po=0;
if(shield_res_pu<=0.15)shield_res_pu=0;

if(shield_res_s>=1.25)shield_res_s=1.25;
if(shield_res_pi>=1.25)shield_res_pi=1.25;
if(shield_res_f>=1.25)shield_res_f=1.25;
if(shield_res_i>=1.25)shield_res_i=1.25;
if(shield_res_po>=1.25)shield_res_po=1.25;
if(shield_res_pu>=1.25)shield_res_pu=1.25;
