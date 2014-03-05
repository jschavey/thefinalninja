//  Script analyzes the distance between the collison mask and the ground
//      object's bounding box along with the y position of the object to determine
//      the y value of the collision mask for the ground
//

//  Analysis:
//
//  Knowns:
//      relative y-position of collision mask
//      absolute y-position of the origin of the ground
//      sprite height
//      mask height
//

var groundHeight    = sprite_get_height( obj_ground );
var mask            = object_get_mask( obj_ground );
var maskHeight      = sprite_get_height( mask );
var difference      = groundHeight - maskHeight;

return obj_ground.y - difference;
