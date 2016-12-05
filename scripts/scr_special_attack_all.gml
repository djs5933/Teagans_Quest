attacker = argument0;

//Subtracts MP cost from character
with (attacker)
{
//mp -= obj_magic_menu.menu_items[|obj_magic_menu.selectionCounter].mpcost;
    mp -= ds_list_find_value(obj_magic_menu.menu_items, obj_magic_menu.selectionCounter).mpcost;
}

for (i = 0; i<ds_list_size(global.enemy); i++){
scr_damage(ds_list_find_value(global.enemy,i), ds_list_find_value(attacker.magic_list, obj_magic_menu.selectionCounter).damage + irandom_range(-1,attacker.WIL));
}

attacker.isTurn = false;
obj_battle_menu.alarm[0] = 1;
if instance_exists(obj_magic_menu){
obj_magic_menu.alarm[0] = 1;
}
obj_battle_controller.turn_counter++;