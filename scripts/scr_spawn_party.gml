for(i = 0; i < ds_list_size(global.party); i++ )
{
    /*
    temp = ds_list_find_value(global.party, i);
    temp.state = player_States.battle;
    //temp.old_x = temp.x;
    //temp.old_y = temp.y;
    temp.x = (view_wport[0]/100) *80 + (-40*i);
    temp.y = (view_hport[0]/2) + (-80*i);
    */
    temp = instance_create((room_width/100)*80+(-40*i), (room_height / 2) + -80* i, ds_list_find_value(global.party,i));
    temp.state = player_States.battle;
    scr_character_autoload(temp);
    ds_list_add(obj_battle_controller.active_party, temp);
}