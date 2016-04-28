///scr_enemy_wander_state
scr_check_for_player();

phy_position_x += sign(targetx - x) * movespd;
phy_position_y += sign(targety - y) * movespd;

switch (round((point_direction(x,y,targetx,targety)+45)/45)) // round the number(((angle)+45)/45)
{
    case 1: sprite_index = spr_ditto_right;     // 1 = round the number(((0)+45)/45)
            break;
    case 2: sprite_index = spr_ditto_ne;        // 2 = round the number(((45)+45)/45)
            break;
    case 3: sprite_index = spr_ditto_up;        // 3 = round the number(((90)+45)/45)
            break;
    case 4: sprite_index = spr_ditto_nw;        // 4 = round the number(((135)+45)/45)
            break;
    case 5: sprite_index = spr_ditto_left;      // 5 = round the number(((180)+45)/45)
            break;
    case 6: sprite_index = spr_ditto_sw;
            break;
    case 7: sprite_index = spr_ditto_down; 
            break;
    case 8: sprite_index = spr_ditto_se;
            break;
}
