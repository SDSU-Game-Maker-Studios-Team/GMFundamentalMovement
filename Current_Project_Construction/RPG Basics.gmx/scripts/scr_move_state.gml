///scr_move_state
scr_input_keys();

if (dashkey && obj_player_stats.stamina >= 5)
{
    state = scr_dash_state;
    alarm[0] = room_speed/3;
    obj_player_stats.stamina -= 5;
    obj_player_stats.alarm[0] = room_speed;
    
}

if (attackkey)
{
    image_index = 0;
    state = scr_attack_state;
}
//X , Y Axis movement
var xaxis = (rightkey - leftkey);
var yaxis = (downkey - upkey);

// Get direction 
dir = point_direction(0, 0, xaxis, yaxis);

// Get length
if (xaxis == 0 && yaxis == 0)
{
    length = 0;

}
else 
{
    length = movespd;
    scr_get_face();
}

//Declaring movement horizontal and vertical speed
hspd = lengthdir_x(length,dir);
vspd = lengthdir_y(length,dir);

//movement
phy_position_x += hspd;
phy_position_y += vspd;

// Control the sprite
image_speed = 0.1;
if (length == 0)
{
image_index = 0;
}

//Animations Sprites
switch (face)
{
    case RIGHT: sprite_index = spr_runningright;
        break;
    case NE: sprite_index = spr_ne;
        break;
    case UP: sprite_index = spr_runningup;
        break;
    case NW: sprite_index = spr_nw;
        break;
    case SW: sprite_index = spr_sw;
        break;
    case LEFT: sprite_index = spr_runningleft;
        break;
    case DOWN: sprite_index = spr_runningdown;
        break;
    case SE: sprite_index = spr_se;
        break;
}
