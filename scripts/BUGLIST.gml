/*

    *with the "timed hits" system:
        -[RESOLVED]the selection controller sometimes doesn't switch over
            RESOLUTION NOTES:
            this occurred because the battle menu was still active, so pressing space both
            registered a timed_hit and spawned another targetting controller.
            The solution has the timelines adding garbage to the end of the global.menu_path
            so that the battle menu will not be active, DON'T FORGET TO DELETE IT AFTERWARDS
            
            
        -damage sometimes becomes negative and heals enemies (RESOLVED: formula was fucked)
        -mashing space will crash game (enemy dying too soon?)
        
        -After using a charge attack, the damage given via charge will carry over to subsequent attacks.
        
*/