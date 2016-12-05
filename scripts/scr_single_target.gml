//This chooses a target out of the entire enemy list
//will set a global.targeted_enemy
time = 0;
targeted_counter = 0;
while(!keyboard_check_pressed(vk_space) && time < 100000)
{
    if(keyboard_check_pressed(vk_down))
    {
        targeted_counter++;
    }
    
    else if (keyboard_check_pressed(vk_up))
    {
        if(targeted_counter == 0)
        {
            targeted_counter = ds_list_size(global.enemy);
        }
        else
        {
            targeted_counter++;
        }
    }
    
    global.targeted_enemy = ds_list_find_value(global.enemy, targeted_counter % ds_list_size(global.enemy));
    
    if(!instance_exists(obj_cursor))
    {
        cursor = instance_create(global.targeted_enemy.x + 50, global.targeted_enemy.y, obj_cursor);
    }
    else
    {
        cursor.x = global.targeted_enemy.x + 50;
        cursor.y = global.targeted_enemy.y;
    }
    
    time++;
}

show_debug_message("loop is done");
with(cursor)
{
    instance_destroy();
}