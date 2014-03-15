//  Spearman tactics
//  Advance on player, poke

if( distance_to_object( obj_ninja ) > 130 ) {
    move_towards_point(obj_ninja.x, y, 5);
} else {
    speed = 0;
    self.Animation = self.Ranged;
}

if (image_index == Ranged) {
    instance_create( x, y, obj_Arrow);   
}
