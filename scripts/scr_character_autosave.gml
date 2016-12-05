/*USAGE
Argument0 = object reference to the character needing to be saved

this script will extract all pertinent information from the object and
save it in a place so it will be automatically loaded later

for this purpose, it is important that all of the information is standardized

*/

var savelist, savestr, file;

savelist = ds_list_create();

var character = argument0;

//header-filling the savelist

ds_list_add(savelist, character.hp_max);
ds_list_add(savelist, character.hp);
ds_list_add(savelist, character.mp_max);
ds_list_add(savelist, character.mp);
ds_list_add(savelist, character.xp_max);
ds_list_add(savelist, character.xp);


ds_list_add(savelist, character.weapon_dmg);

ds_list_add(savelist, character.lvl);

ds_list_add(savelist, character.base_dmg);

ds_list_add(savelist, character.STR);
ds_list_add(savelist, character.DEF);
ds_list_add(savelist, character.AGI);
ds_list_add(savelist, character.VIT);
ds_list_add(savelist, character.WIL);
ds_list_add(savelist, character.LCK);

ds_list_add(savelist, character.weapon_slot);
ds_list_add(savelist, character.helm_slot);
ds_list_add(savelist, character.armor_slot);
ds_list_add(savelist, character.accessory_slot);
ds_list_add(savelist, character.ARMOR_RATING);

//writing a ds_list to a ds_list might not work but let's try anyway
ds_list_add(savelist, character.magic_list);

//end header

//write to file
file = file_text_open_write("autosav" + character.name + ".sav");

savestr = ds_list_write(savelist);

file_text_write_string(file, savestr);

file_text_close(file);
ds_list_destroy(savelist);