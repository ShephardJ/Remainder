
var role=0
if argument0="SWAMP1"
{
    var burn_r=2;
    var burn_a=5;
}
if argument0="SWAMP2" 
{
    var burn_r=2;
    var burn_a=5;
    
}
if argument0="SWAMP3" 
{
    var burn_r=2;
    var burn_a=5;
    
}
if argument0="SWAMP4" 
{
    var burn_r=2;
    var burn_a=5;
    
}
if argument0="FOREST1" 
{
    var burn_r=1;
    var burn_a=4;
    
}
if argument0="FOREST2" 
{
    var burn_r=1;
    var burn_a=4;
    
}
if argument0="MOUNTAIN1" 
{
    var burn_r=1;
    var burn_a=6;
    
}
if argument0="MOUNTAIN2" 
{
    var burn_r=1;
    var burn_a=6;
    
}
if argument0="MOUNTAIN3" 
{
    var burn_r=1;
    var burn_a=6;
    
}
if argument0="MOUNTAIN4" 
{
    var burn_r=1;
    var burn_a=6;
    
}
if argument0="BRIDGE1" 
{
    var burn_r=1;
    var burn_a=6;
    
}
if argument0="BRIDGE2" 
{
    var burn_r=1;
    var burn_a=6;
    
}
if argument0="GATE1" 
{
    var burn_r=1;
    var burn_a=5;
    
}
if argument0="GATE2" 
{
    var burn_r=1;
    var burn_a=5;
    
}
if argument0="GATE3" 
{
    var burn_r=1;
    var burn_a=5;
    
}
if argument0="GATE4" 
{
    var burn_r=1;
    var burn_a=5;
    
}

burn_rate=burn_r;
burn_amount=burn_a+global.special_burn_ajust;

return role;
