/// @description Game UI
// You can write your code in this editor

//Boundary warning

if(Player.showboundaryUI)
{
    draw_set_font (font_Default); //sets the font
    draw_set_color(c_yellow); //makes the player one font blue
	draw_set_halign(fa_center);
    draw_text(1280 / 2, 720 / 2, string("WARNING! TURN BACK")); //draws player one's score at the top left of the screen
	draw_set_halign(fa_left);
}

//healthbar
draw_sprite(healthBar, 0, healthbar_x, healthbar_y); //healthbar
draw_sprite_stretched(healthBar, 0, healthbar_x, healthbar_y, (Player.playerHealth/Player.maxHealth) * healthbar_width, healthbar_height); //changing the healthbar
//draw_sprite(healthBarBorder, 0, healthbar_x-5, healthbar_y-10); //healthbar border
draw_sprite_stretched(healthBarBorder, 0,  healthbar_x - 9, healthbar_y - 5, 122, 20); //changing the healthbar

//vax count
draw_set_font(font_Default);
draw_set_color(c_white); //makes the player one font blue
var vaxes = 3;
if (Player.visitedPlanetA)
{
	vaxes--;
}
if (Player.visitedPlanetB)
{
	vaxes--;
}
if (Player.visitedPlanetC)
{
	vaxes--;
}
draw_text(50, 50,"Vaccine Shipments Left: " + string(vaxes));
draw_text(50, 70,"Press T For Controls");