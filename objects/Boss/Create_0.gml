/// @description Insert description here
// You can write your code in this editor
image_xscale = .5;
image_yscale = .5;

maxHealth = 100;
bossHealth = maxHealth;

bossDamage = 10;
playerCollide = true;

projectileDelayTimer = 3 * room_speed;
playerCollideTimer = 2 * room_speed;

canShoot = false;

bossRange = 1000;

//healthbar

healthbar_width = 100;
healthbar_height = 12;
healthbar_x = x;
healthbar_y = y -50;