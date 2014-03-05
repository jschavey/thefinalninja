////Center Around Mask

/*
    Script will center object 'self' around collision mask
*/

var dist1;  //  Distance from room to object
var dist2;  //  Distance from object bounds to collidable mask
var dist3;  //  Distance from mask to target center
var target_x;
var target_y;
var mask    = object_get_mask( self );

//  Calculate x-value

dist1   = self.x - ( sprite_get_width( self ) / 2 );
dist2   = sprite_get_bbox_left( mask );
dist3   = sprite_get_width( mask ) / 2;
target_x    = dist1 + dist2 + dist3;

dist1   = self.y - ( sprite_get_width( self ) / 2);
dist2   = sprite_get_bbox_top( mask );
dist3   = sprite_get_height( mask ) / 2;
target_y    = dist1 + dist2 + dist3;

//  Pull the trigger

sprite_set_offset( self, target_x, target_y );
