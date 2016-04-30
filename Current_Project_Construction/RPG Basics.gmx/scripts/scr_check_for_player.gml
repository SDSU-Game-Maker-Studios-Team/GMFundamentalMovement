///scr_check_for_player

if (instance_exists(obj_player))
{
    var dis = point_distance(x, y, obj_player.x, obj_player.y);  // distance to the player
    if (dis < sight)
    {
        state = scr_enemy_chase_state;
        targetx = obj_player.x;
        targety = obj_player.y; 
    }
    else
    {
        scr_enemy_choose_next_state();
        if (scr_enemy_idle_state)
        {
            face = DOWN;
        }
    }
}
else
{
    scr_enemy_choose_next_state();
}
