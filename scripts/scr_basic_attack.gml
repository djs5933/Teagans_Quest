attacker = argument0;

defender = global.targeted_enemy;

damage = round(attacker.damage + attacker.STR/4 + (irandom(attacker.LCK +3) -3)/4);
damage -= round(((defender.DEF) + irandom_range(-3,defender.LCK) + defender.ARMOR_RATING)/10 );
//TODO: Need to add armor bonus as a factor to this equation.
scr_damage(defender, damage);

//this should not go here, incase multiple hits
//attacker.isTurn = false;


//moving to end of basic attack timeline
//obj_battle_menu.alarm[0] = 1;
//obj_battle_controller.turn_counter++;