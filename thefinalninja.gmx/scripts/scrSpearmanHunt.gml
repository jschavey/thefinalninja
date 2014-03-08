//  Spearman tactics
//  Advance on player, poke

if( distance_to_object( obj_ninja ) > 0 ) {
    move_towards_point(obj_ninja.x, y, 5);
} else {
    speed = 0;
    self.Animation = self.Melee;
}
