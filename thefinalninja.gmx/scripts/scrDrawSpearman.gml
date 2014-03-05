// Update Facing for Proper Index
if ( direction < 90 || direction > 270) {
    Facing = Right;
} else {
    Facing = Left;
}

//  Animate Movement
if ( speed > 0) {
    Animation = Moving;
}

//  Animate Melee
if ( distance_to_object(obj_ninja) < 45) {
    Animation = Melee;
}

if ( Update ) {                 // start of new sprite animation
    switch ( Animation ) {
        case Melee:
            image_index = Melee + Facing; 
            Update = false;
            break;
        case Moving:
            image_index = Moving + Facing;
            Update = false;
            break;
    }   
} else {                        // step through sprite animation
    switch ( Animation ) {
        case Melee:
            image_index += (10/30);
            if ( image_index >= (Melee + Facing + 4) ) {
                Update = true; }
            break;
        case Moving:
            image_index += (5/30);
            if ( image_index >= (Moving + Facing + 4) ) {
                Update = true; }
            break;
    }
}

draw_self();
