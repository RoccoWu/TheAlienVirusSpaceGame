/// @description Insert description here
// You can write your code in this editor
projectileDamage = 10;
projectileLifeTimer = 5 * room_speed;


var dirToPlayer = point_direction(x, y, Player.x, Player.y);
phy_rotation = -1 * (dirToPlayer - 90);

physics_apply_local_impulse(phy_com_x - x, phy_com_y - y, 0, -30);
phy_angular_velocity = 0;

audio_play_sound(BossFireMissles, 1, false);