///scr_attack_state
image_speed = 0.2;
switch (face)
{    
    case RIGHT: sprite_index = spr_phy_att_right;       
            break;
    case NE: sprite_index = spr_phy_att_ne;      
            break;
    case UP: sprite_index = spr_phy_att_up;    
            break;
    case NW: sprite_index = spr_phy_att_nw;
            break;
    case LEFT: sprite_index = spr_phy_att_left;    
            break;
    case SW: sprite_index = spr_phy_att_sw;
            break;
    case DOWN: sprite_index = spr_phy_att_down;
            break;
    case SE: sprite_index = spr_phy_att_se; 
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
            yy = y + 10;
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
    damage.damage = obj_player_stats.attackstr;
    attacked = true;
}

