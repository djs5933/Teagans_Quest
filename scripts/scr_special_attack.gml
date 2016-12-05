attacker = argument0;

defender = global.targeted_enemy;

//Subtracts MP cost from character
with (attacker)
{
//mp -= obj_magic_menu.menu_items[|obj_magic_menu.selectionCounter].mpcost;
    mp -= ds_list_find_value(obj_magic_menu.menu_items, obj_magic_menu.selectionCounter).mpcost;
}

scr_damage(defender, ds_list_find_value(attacker.magic_list, obj_magic_menu.selectionCounter).damage+attacker.chargeBonusDamage);
attacker.charge_counter = 0;
attacker.chargeBonusDamage = 0;
attacker.isTurn = false;
//obj_battle_menu.alarm[0] = 1;
if instance_exists(obj_magic_menu){
obj_magic_menu.alarm[0] = 1
}
//obj_battle_controller.turn_counter++;