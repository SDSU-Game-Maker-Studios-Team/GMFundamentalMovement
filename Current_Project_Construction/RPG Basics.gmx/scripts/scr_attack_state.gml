///scr_attack_state
image_speed = 0.2;
switch (sprite_index)
{
    case spr_runningdown: sprite_index = spr_phy_att_down;
            break;
    case spr_runningup: sprite_index = spr_phy_att_up;    
            break;
    case spr_runningleft: sprite_index = spr_phy_att_left;    
            break;
    case spr_runningright: sprite_index = spr_phy_att_right;       
            break;
    case spr_ne: sprite_index = spr_phy_att_ne;      
            break;
    case spr_nw: sprite_index = spr_phy_att_nw;
            break;
    case spr_se: sprite_index = spr_phy_att_se; 
            break;
    case spr_sw: sprite_index = spr_phy_att_sw;
            break;
}

if (image_index >= 1 && attacked == false)
{
    var xx = 0;
    var yy = 0;
    switch (sprite_index)
    {
        case spr_phy_att_down: 
            xx = x;
            yy = y + 5;
            break;
        case spr_phy_att_up:
            xx = x;
            yy = y - 5;   
            break;
        case spr_phy_att_left:
            xx = x - 5;
            yy = y;
            break;
        case spr_phy_att_right:
            xx = x + 5;  
            yy = y;    
            break;
        case spr_phy_att_ne:
            xx = x + lengthdir_x(5,0);
            yy = y - lengthdir_y(-5,90);
            break;
        case spr_phy_att_nw:
            xx = x - lengthdir_x(-5,180);
            yy = y - lengthdir_y(-5,90); 
            break;
        case spr_phy_att_se:
            xx = x + lengthdir_x(5,0);
            yy = y + lengthdir_y(5,270);
            break;
        case spr_phy_att_sw:
            xx = x - lengthdir_x(-5,180);
            yy = y + lengthdir_y(5,270);
            break;
    }
    var damage = instance_create(xx, yy, obj_damage);
    damage.creator = id;
    attacked = true;
}

