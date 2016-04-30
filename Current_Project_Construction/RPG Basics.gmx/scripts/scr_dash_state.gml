///scr_dash_state

if (length == 0)
{
    dir = face * 45;
}
length = movespd * 3;

//Declaring movement horizontal and vertical speed
hspd = lengthdir_x(length,dir);
vspd = lengthdir_y(length,dir);

//movement
phy_position_x += hspd;
phy_position_y += vspd;

//Create dash sprite
var dash = instance_create(x,y, obj_dash_effect);
dash.sprite_index = sprite_index;
dash.image_index = image_index;

