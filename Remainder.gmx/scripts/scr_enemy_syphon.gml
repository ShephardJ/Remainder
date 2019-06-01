if syphon_start=1{
    //syphon left
    if x>300{
        if place_meeting(x-320,y,all){
            var attack=instance_create(x-320+78,y+120,obj_syphon_attack);
            attack.source_id=id;
            attack.position="left";
        }
    }
    //syphon right
    if x<600{
        if place_meeting(x+320,y,all){
            var attack=instance_create(x+320+78,y+120,obj_syphon_attack);
            attack.source_id=id;
            attack.position="right";
        }
    }
    //syphon top
    if y>300{
        if place_meeting(x,y-240,all){
            var attack=instance_create(x+78,y-240+120,obj_syphon_attack);
            attack.source_id=id;
            attack.position="top";
        }
    }
    //syphon bottom
    if y<1100{
        if place_meeting(x,y+240,all){
            var attack=instance_create(x+78,y+120+240,obj_syphon_attack);
            attack.source_id=id;
            attack.position="bottom";
        }
    }
    syphon_start=0;
}

if syphoning=1{
    
    if !instance_exists(obj_syphon_attack){
    syphoning=0
    }
    
}
else global.enemy_acting=0;
