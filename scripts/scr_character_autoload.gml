/*USAGE
argument0 = character object to which to load data and set data into

*/

var loadlist, loadstr, file;

var character = argument0;

loadlist = ds_list_create();

if (!(file_exists("autosav" + character.name + ".sav")))
{
    return -1;
}

else
{
    file = file_text_open_read("autosav" + character.name + ".sav");
    loadstr = file_text_read_string(file);
    
    ds_list_read(loadlist, loadstr);
    
    file_text_close(file);
    
    character.hp_max = ds_list_find_value(loadlist, 0);
    ds_list_delete(loadlist, 0);
    character.hp = ds_list_find_value(loadlist, 0);
    ds_list_delete(loadlist, 0);
    character.mp_max = ds_list_find_value(loadlist, 0);
    ds_list_delete(loadlist, 0);
    character.mp = ds_list_find_value(loadlist, 0);
    ds_list_delete(loadlist, 0);
    character.xp_max = ds_list_find_value(loadlist, 0);
    ds_list_delete(loadlist, 0);
    character.xp = ds_list_find_value(loadlist, 0);
    ds_list_delete(loadlist, 0);
        
    character.weapon_dmg = ds_list_find_value(loadlist, 0);
    ds_list_delete(loadlist, 0);
    
    character.lvl = ds_list_find_value(loadlist, 0);
    ds_list_delete(loadlist, 0);
    
    character.base_dmg = ds_list_find_value(loadlist, 0);
    ds_list_delete(loadlist, 0);
    
    character.STR = ds_list_find_value(loadlist, 0);
    ds_list_delete(loadlist, 0);
    character.DEF = ds_list_find_value(loadlist, 0);
    ds_list_delete(loadlist, 0);
    character.AGI = ds_list_find_value(loadlist, 0);
    ds_list_delete(loadlist, 0);
    character.VIT = ds_list_find_value(loadlist, 0);
    ds_list_delete(loadlist, 0);
    character.WIL = ds_list_find_value(loadlist, 0);
    ds_list_delete(loadlist, 0);
    character.LCK = ds_list_find_value(loadlist, 0);
    ds_list_delete(loadlist, 0);
    
    character.weapon_slot = ds_list_find_value(loadlist, 0);
    ds_list_delete(loadlist, 0);
    character.helm_slot = ds_list_find_value(loadlist, 0);
    ds_list_delete(loadlist, 0);
    character.armor_slot = ds_list_find_value(loadlist, 0);
    ds_list_delete(loadlist, 0);
    character.accessory_slot = ds_list_find_value(loadlist, 0);
    ds_list_delete(loadlist, 0);
    character.ARMOR_RATING = ds_list_find_value(loadlist, 0);
    ds_list_delete(loadlist, 0);
    
    character.magic_list = ds_list_find_value(loadlist, 0);
    ds_list_delete(loadlist, 0);
    
    
    
    
}
ds_list_destroy(loadlist);    
    