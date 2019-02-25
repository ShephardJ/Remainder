var rings_current=argument0;
if (rings_current>-1)
{
    do
    {
        ring_array[rings_current].xpoint=((x-initial_x)*(rings_current/(argument0+1))+initial_x)
        ring_array[rings_current].ypoint=((y-initial_y)*(rings_current/(argument0+1))+initial_y)
        rings_current-=1
    }
    until rings_current=0||rings_current=0;
}
