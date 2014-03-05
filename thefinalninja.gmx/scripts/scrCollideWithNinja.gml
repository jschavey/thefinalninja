//  Ninja collision event

move_bounce_all(false);

//  Determine if ninja is facing the right way
var enemyLocation = self.x - other.x;
var compare;        //  Direction needed for collision with weapon

if( sign( enemyLocation) < 1 ) {
    compare = 270;
} else {
    compare = 0;
}

if (obj_ninja.Animation == obj_ninja.Melee
    && compare == obj_ninja.direction) {
    score += 10;
    // play sound
    instance_destroy();
} else {
    if (Animation == Melee) {
        health -= 1;
    }
}
