#define scr_airship_cannon_out
acting=1;
acted=0;
if animation_start=1
{
    sprite_index=spr_airship_cannon_out;
    image_index=0;
    image_speed=15/60;
    animation_start=0;
}
else
{
    if image_index>11
    {
        image_index=11;
        image_speed=0;
        current_state=state;
        acting=0;
        acted=1;
        animation_start=1;
    }
}

#define scr_airship_cannon_in
acting=1;
acted=0;
if animation_start=1
{
    sprite_index=spr_airship_cannon_in;
    image_index=0;
    image_speed=18/60;
    animation_start=0;
}
else
{
    if image_index>4
    {
        image_index=5;
        image_speed=0;
        current_state=state;
        acting=0;
        acted=1;
        animation_start=1;
    }
}

#define scr_airship_cannon_to_zapper
acting=1
if animation_start=1
{
    if sprite_index=spr_airship_cannon_out
    {
        sprite_index=spr_airship_cannon_in;
        image_index=0;
        image_speed=12/60;
    }
    if (sprite_index=spr_airship_cannon_in)&&(image_index>3)
    {
        image_speed=0;
        animation_start=0;
    }
}
else
{
    if sprite_index=spr_airship_cannon_in
    {
        sprite_index=spr_airship_rod_out;
        image_index=0;
        image_speed=12/60;
    }
    
    if (sprite_index=spr_airship_rod_out)&&(image_index>9)
    {
        image_index=9;
        image_speed=0;
        current_state=state;
        acting=0;
        acted=1;
        animation_start=1;
    }
}

#define scr_airship_cannon_zapper_in
acting=1;
acted=0;
if animation_start=1
{
    sprite_index=spr_airship_rod_in
    image_index=0;
    image_speed=15/60;
    animation_start=0;
}
else
{
    if image_index>4
    {
        image_index=5;
        image_speed=0;
        current_state=state;
        acting=0;
        acted=1;
        animation_start=1;
    }
}

#define scr_airship_cannon_destroyed_3
acting=1
acted=0;
if animation_start=1
{
    sprite_index=spr_airship_cannon_destroyed;
    image_index=0;
    image_speed=12/60;
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

#define scr_airship_cannon_destroyed_4
acting=1
acted=0;
if animation_start=1
{
    sprite_index=spr_airship_cannon_destroyed;
    image_index=0;
    image_speed=12/60;
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

#define scr_airship_cannon_destroyed_5
acting=1
acted=0;
if animation_start=1
{
    sprite_index=spr_airship_rod_destroyed;
    image_index=0;
    image_speed=12/60;
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