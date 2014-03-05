if( collision_point( self.x, self.y + 40, obj_ground, true, false ) ) {
    x = xprevious //set x to what it was in the previous step
    y = yprevious //set y to what it was in the previous step
    //move_contact_all(direction,-1); //move in the direction you were going until you hit smoothly
    gravity = 0; //set gravity back to zero
    vspeed = 0; //set your vspeed back to zero
}
