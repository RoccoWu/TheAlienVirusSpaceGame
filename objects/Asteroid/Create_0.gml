/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

phy_rotation = random_range(0, 360);

global.maxIntegrity = 100;
integrity = global.maxIntegrity;

minCollisionSpeedForDamage = 1;
collisionCooldownTime = 2;
collisionCooldownTimer = 0;

otherIsPlayer = false;

destroying = false;