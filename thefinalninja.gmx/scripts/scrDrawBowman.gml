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

//  Animate Attack
if ( distance_to_object(obj_ninja) < 130) {
    Animation = Ranged;
}

if ( Update ) {                 // start of new sprite animation
    switch ( Animation ) {
        case Standing:
            image_index = Standing + Facing;
            Update = false;
            break;
        case Ranged:
            image_index = Ranged + Facing; 
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
        case Ranged:
            image_index += (5/30);
            if ( image_index >= (Ranged + Facing + 4) ) {
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

draw_self();
