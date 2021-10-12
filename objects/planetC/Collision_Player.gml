/// @description Insert description here
// You can write your code in this editor
if (!Player.visitedPlanetC){
	audio_stop_sound(ThrusterFire);
	room = CutscenePlanet2;
	Player.visitedPlanetC = true;
	Player.active = false;
	Player.phy_linear_velocity_x = 0;
	Player.phy_linear_velocity_y = 0;
	Player.x = 1900;
	Player.y = 2000;
	GameManager.vaxCount -=1; //decreases the vaxCount when visiting planet first time.
}