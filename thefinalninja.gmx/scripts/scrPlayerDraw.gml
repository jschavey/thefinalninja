//  Begin with Animation Handling

if ( Update ) {                 // start of new sprite animation
    switch ( Animation ) {
        case Standing:
            image_index = Standing + Facing;
            image_speed = 0;
            Update = false;
            break;
        case Melee:
            image_index = Melee + Facing; 
            Update = false;
            break;
        case Moving:
            image_index = Moving + Facing;
            Update = false;
            break;
        case Jumping:
            image_index = Jumping + Facing;
            Update = false;
            break;  
    }   
} else {                        // step through sprite animation
    switch ( Animation ) {
        case Standing:
            break;
        case Melee:
            image_index += (10/30);
            if ( image_index >= (Melee + Facing + 4) ) {
                Animation = Standing;
                Update = true; }
            break;
        case Moving:
            image_index += (5/30);
            if ( image_index >= (Moving + Facing + 4) ) {
                Update = true; }
            break;
        case Jumping:
            image_index += (5/30);
            if ( image_index > (Jumping + Facing + 3) ) {
                Update = true; }
            break;
    }
}
//  End Animation Handling

draw_self();
