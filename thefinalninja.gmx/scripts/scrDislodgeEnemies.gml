//  Run this every step to unstick any enemies
//  Temporary

with(argument0) {
    while (place_meeting(x, y, obj_spearman)) {
        move_bounce_all(false);     //  bounce if able
    
        // vars
        var deltax = obj_ninja.x - x;
        var deltay = obj_ninja.y - y;
        var dir = arctan(deltay / deltax);
    
        move_outside_all(dir, -1);
    }
/*    while (place_meeting(x, y, all)) {
        move_bounce_all(false);     //  bounce if able
    
        // vars
        var deltax = x - obj_ninja.x;
        var deltay = y - obj_ninja.y;
        var dir = arctan(deltay / deltax);
    
        move_outside_all(dir, -1);
    }*/
}
