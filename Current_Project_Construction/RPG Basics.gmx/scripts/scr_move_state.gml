///scr_move_state
scr_input_keys();

if (dashkey)
{
    state = scr_dash_state;
    alarm[0] = room_speed/3;
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
if (vspd > 0)
    sprite_index = spr_runningdown;
else if (vspd < 0)
    sprite_index = spr_runningup;
if (hspd > 0)
    sprite_index = spr_runningright;
else if (hspd < 0)
    sprite_index = spr_runningleft;
if (downkey && rightkey)
    sprite_index = spr_se;
else if (downkey && leftkey)
    sprite_index = spr_sw;
if (upkey && rightkey)
    sprite_index = spr_ne;
else if (upkey && leftkey)
    sprite_index = spr_nw; 
