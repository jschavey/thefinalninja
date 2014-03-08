//  Ninja collision event

//  Determine if ninja is facing the right way
var ninjaLocation = self.x - obj_ninja.x;
var compare;        //  Direction needed for collision with weapon

if( ninjaLocation < 0 ) {
    compare = obj_ninja.Left;
} else {
    compare = obj_ninja.Right;
}

if (obj_ninja.Animation == obj_ninja.Melee && compare == obj_ninja.Facing) {
    score += 10;
    // play sound
    instance_destroy();
} else {
    if (self.Animation == self.Melee) {
        health -= 1;
    }
}
