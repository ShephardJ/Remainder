#define scr_airship_hatch_up
acting=1
acted=0;
if animation_start=1
{
    sprite_index=spr_airship_trapdoor_closing_from_top_to_bottom;
    image_index=11;
    image_speed=-17/60;
    animation_start=0;
}
else
{
    if image_index<2
    {
        image_index=0;
        image_speed=0;
        current_state=state;
        acting=0;
        acted=1;
        animation_start=1;
    }
}

#define scr_airship_hatch_down_to_mid
acting=1
acted=0;
if animation_start=1
{
    sprite_index=spr_airship_trapdoor_closing_top_to_mid;
    image_index=0;
    image_speed=12/60;
    animation_start=0;
}
else
{
    if image_index>9
    {
        image_index=10;
        image_speed=0;
        current_state=state;
        acting=0;
        acted=1;
        animation_start=1;
    }
}

#define scr_airship_hatch_down
acting=1
acted=0;
if animation_start=1
{
    sprite_index=spr_airship_trapdoor_closing_from_top_to_bottom;
    image_index=0;
    image_speed=15/60;
    animation_start=0;
}
else
{
    if image_index>17
    {
        image_index=18;
        image_speed=0;
        current_state=state;
        acting=0;
        acted=1;
        animation_start=1;
    }
}

#define scr_airship_hatch_down_from_mid
acting=1
acted=0;
if animation_start=1
{
    sprite_index=spr_airship_trapdoor_closing_mid_to_bottom;
    image_index=0;
    image_speed=10/60;
    animation_start=0;
}
else
{
    if image_index>10
    {
        image_index=11;
        image_speed=0;
        current_state=state;
        acting=0;
        acted=1;
        animation_start=1;
    }
}