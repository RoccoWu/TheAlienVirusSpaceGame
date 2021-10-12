/// @description Insert description here
// You can write your code in this editor
//image_xscale = 0.25;
//image_yscale = 0.25;

projectileDamage = 10;
projectileLifeTimer = 5 * room_speed;

phy_rotation = -1 * (point_direction(x, y, mouse_x, mouse_y) - 90);
physics_apply_local_impulse(0, 0, 0, -30);
phy_angular_velocity = 0;