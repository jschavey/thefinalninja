if( health == 0 )
{
    // play sound
    instance_destroy();
    show_message("Game over.");
    game_end(); 
    // display end of game message
    // trigger game restart
}
