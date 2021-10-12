/// @description Insert description here
// You can write your code in this editor
//healthbar

draw_self();
var healthBarPosition = LocalPosition(self, x - 50, y - 100);

draw_sprite(healthBar, 0,healthBarPosition.x, healthBarPosition.y); //healthbar
draw_sprite_stretched(healthBar, 0, healthBarPosition.x, healthBarPosition.y, (bossHealth/maxHealth) * healthbar_width, healthbar_height); //changing the healthbar
//draw_sprite(healthBarBorder, 0, healthbar_x-5, healthbar_y-10); //healthbar border
draw_sprite_stretched(healthBarBorder, 0,  healthBarPosition.x - 9, healthBarPosition.y - 5, 122, 20); //changing the healthbar