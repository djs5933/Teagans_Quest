// If the object we are attacking is not player deal damage to argument0

damage = argument1;
var target = argument0;

//check if the target is one of the enemies
for(var i = 0; i < ds_list_size(global.enemy); i++)
{
    if(global.enemy[|i] == target)
    {
        //if they are an enemy, play the hurt animation
        with(target)
        {
            
            timeline_index = tl_enemy_damage_recoil;
            timeline_position = 0;
            timeline_running = true;
            timeline_loop = false;
            is_Enemy = true;
        }
    }
}

if (target.is_Enemy == false){
    with(target)
        {            
            timeline_index = tl_party_damage_recoil;
            timeline_position = 0;
            timeline_running = true;
            timeline_loop = false;
        }
    }

//target.hp-= round(damage);
target.temp_damage = round(damage);



/*Moved to the enemy itself
with(argument0)
{
    
    
    if(argument0.hp<=0)
    {
        argument0.alive=false; 
        global.button--;
        argument0.image_alpha=0;
    }
}
*/
dmg_=instance_create(argument0.x +100,argument0.y,show_damage);
with(dmg_){
dmg_n= round(argument1);
alarm[0]=60;
}


//obj_control_encounter.alarm[0]=60 // None can attack for 2 seconds

/*

argument0 = enemy ID
argument1 = amount of damage dealt

This function deals damage to argument0 and checks if the argument0 is dead or not

It also displays damage dealt onscreen