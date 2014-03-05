//  Ninja collision event

move_bounce_all(false);

if (obj_ninja.Animation == obj_ninja.Melee) {
    score += 10;
    // play sound
    instance_destroy();
} else {
    if (Animation == Melee) {
        health -= 1;
    }
}
