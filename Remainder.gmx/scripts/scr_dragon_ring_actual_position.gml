var desired=argument0;
var current=argument1;
var delta= desired-current;
var returnval
if (abs(delta)>argument2)
{
    returnval=current+(delta/argument3)
}
else returnval=current;
return(returnval);
