if (Animation == Moving) {      // update position if moving
    if (Facing == Right && self.x < room_width ) {
        x += 10;
    } else if (Facing == Left && self.x > 0) {
        x -= 10;
    }
} 
