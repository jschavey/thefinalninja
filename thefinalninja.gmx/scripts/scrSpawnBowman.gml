var mask                = object_get_mask( self );
var collidableWidth     = sprite_get_width( mask );
var collidableHeight    = sprite_get_height( mask ); 
var safe_x              = collidableWidth + 
                            random( room_width - ( 2 * collidableWidth ) );

    mask                = object_get_mask( obj_ground );
    
var safe_y              = scrGetGroundY();

instance_create( safe_x, safe_y - 10, obj_bowman);
