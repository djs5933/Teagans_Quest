/*
7/31/16
Changes:
Added a charge-type timed hit attack timeline. Currently attached to Spell.

7/21/16
Changes:
Added a "timed hits" system where in the basic attack, you can press space again
and Teagan will attack again. This system will carry over into other attacks and abilities
in the future

Fixed a bug where the "damage" animation for the party would play for
the entire party at the same time. This was fixed by making the enemy object
use the target in the battle_controller's active party list instead of the global one



6/29/2016

Changes:
Added party damage animation/timeline.
Modified scr_damage to check for party damage to use said timeline.

Bugs:
Found a bug where Teag will rush too far forward if you hammer attack to fast.
Need for teag 


6/28/2016

Styx added the slime and damage animation/timeline.


6/16/2016

+Added (1) animation! A Punch animation attached to Teag's basic attack
    *added a timeline (tl_party_attack_animation) to do this
    *animation is still WIP and open to revision
    *added a sound effect (snd_punch) that plays when during animation
+fixed a bug where turns weren't be assigned correctly
    *switched to a system where obj_battle_controller now uses "active_party" filled with instances
    *changed all butts (attack, spell, spell2, spellall) to reflect this change
    ?had to use "break" to exit for loop when checking for "isTurn" otherwise crash

TO DO:
-Revise current animations
-Add more animations for other attacks
-Add animations for enemies as well
-Revise "battle status" indicators that appear at top of screen
-Come up with different sprites/effects(?)
    
6/13/2016
Made a persistent debug object to stick debug info on. Invisible by default. Num5 to view.
Added a character status screen, which allows viewing of a character's stats.
Added a party button to the menu, which accesses said screen.

Technically, this status screen method is a hacky workaround. The stats really should be objects.
Because the original status screen was not actually made from objects,
I duplicated and modified the Targeting Controller for this purpose.
Uncertain if this should be rewritten. ( Probably, but for now, it just werkz :^) )

Gave all spells and abstract equipment a default "name" variable to display in the status screen.

Created new objects: obj_party_button, obj_party_selector, obj_character_status, obj_debugtool

BUGS/TODO:
Status screen only uses the global.party version of the character's stats.
Pressing space while in a character's stats will crash the game.
You can still press up and down in the status menu to get a boop.
Exceeding a certain number of Up presses in the status menu will crash the game.
The buttons of the main menu are still visible while in the character status menu.
Was not able to get the character's known spell names to display properly.


6/7/2016
added arrows for up/down on the scrollable menus to indicate is more there
fixed issue where party display screen didn't match the size of the window
fixed various sound issues, moved them from the abstract menu to the abstract button

BUGS/TODO
sometimes the downarrow on the scrollable menu gets bugged when cycling through
TODO: would like to make a button on the party screen that would allow you to select one
of the party members' info and get a screen with more info

6/3/2016
Added a party display and menu to the main field, accessed by pressing Tab.
Gave Teag a new variable, current_portrait, for menu purposes.
Party display currently pulls from global.party's infromation.
Fixed Windows Ding sound error, the files were missing from the folder, for some reason.
Added a menu opening sound effect. (Placeholder)
Added some bird ambience in the creation code of rm_intro. (Placeholder)
Added a boop on menu scroll in obj_abstract_menu. (Placeholder)
Added a bee on menu item confirmation in obj_abstract_menu. (Placeholder)
Added a brrt on menu cancellation in obj_abstract_menu. (Placeholder)


TO DO/BUGS:
While I can resize the party display menu, I can't seem to resize the menu items within. Gotta learn how.
The bars on the party status screen are placeholders, and must scale to the proper size based on the stats. I've know I've done this before, but I'm not sure whether it's worth figuring out again, when we don't have art assets for it yet.
Party display currently pulls from global.party's infromation. If they need to be from the save file, I'll have to change it.
I'm not sure, but I think I preceive a single frame where the character portraits appear before the background does.
The status menu can be opened in battle, which is both a good and bad thing. Causes bugs, but could be useful.
After battle, the party display menu uses a different font than before. Since this is placeholder, I wonder if I should do anything about it yet.
Dialog boxes do not lock the controls yet, allowing for the party status menu to be opened.
The bee/boop/brrt sound effects were only added to the menus, not the targeting controller.
Because of how the menus are structured, there are circumstances where the sounds can play where they shouldn't.
I saved 8-bit beeps and boops as .wav files, and they're 319 KB each. I should see about reducing them.
*/