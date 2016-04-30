///scr_enemy_chase_state
scr_check_for_player();

dir =  point_direction(x, y, targetx, targety);
var hspd = lengthdir_x(movespd, dir);
var vspd = lengthdir_y(movespd, dir);

if instance_exists(obj_player){
phy_position_x += hspd;
phy_position_y += vspd;

scr_get_face();
switch (face) // round the number(((angle))/45)
{
    case RIGHT: sprite_index = spr_ditto_right;     // 1 = round the number(((0)+45)/45)
            break;
    case NE: sprite_index = spr_ditto_ne;        // 2 = round the number(((45)+45)/45)
            break;
    case UP: sprite_index = spr_ditto_up;        // 3 = round the number(((90)+45)/45)
            break;
    case NW: sprite_index = spr_ditto_nw;        // 4 = round the number(((135)+45)/45)
            break;
    case LEFT: sprite_index = spr_ditto_left;      // 5 = round the number(((180)+45)/45)
            break;
    case SW: sprite_index = spr_ditto_sw;
            break;
    case DOWN: sprite_index = spr_ditto_down; 
            break;
    case SE: sprite_index = spr_ditto_se;
            break;
}
}
