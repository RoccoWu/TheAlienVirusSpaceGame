/// @description Insert description here
// You can write your code in this editor
if (!Player.visitedPlanetB){
	room = CutscenePlanet1;
	Player.visitedPlanetB = true;
	Player.active = false;
	Player.phy_linear_velocity_x = 0;
	Player.phy_linear_velocity_y = 0;
	Player.x = 2300;
	Player.y = 2500;
	GameManager.vaxCount -=1; //decreases the vaxCount when visiting planet first time.
}