//  Begin Input Handling

if ( Animation != Melee) {     // accept input only if not attacking
    //  On Press events
    if ( keyboard_check_pressed( vk_left ) ) {
        Update = true;
    }
    if ( keyboard_check_pressed( vk_right ) ) {
        Update = true;
    }
    if ( keyboard_check_pressed( ord('Z') ) ) {
        Update = true;
        Animation = Melee;
    }
    if ( keyboard_check_pressed( vk_up ) && y > 544 )  {
        Animation = Jumping;
        Update = true;
        gravity = 1;        // play with these number to balance jump
        vspeed = -12;       
    }

    
    switch (keyboard_key) {     // currently pressed key
        case vk_left:
            Facing = Left;
            Animation = Moving;
            break;
        case vk_right:
            Facing = Right;
            Animation = Moving;
            break;
        case ord('Z'):
            Animation = Melee;
            break;  
    }    
    
    //  On Release events
    if ( keyboard_check_released( vk_left ) ) {
        Animation = Standing;
        Update = true;
    }
    if ( keyboard_check_released( vk_right ) ) {
        Animation = Standing;
        Update = true;
    }
}
