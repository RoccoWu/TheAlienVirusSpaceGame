/// @description Insert description here
// You can write your code in this editor
if (!Player.visitedPlanetA){
	audio_stop_sound(ThrusterFire);
	room = CutscenePlanet0;
	Player.active = false;
	Player.visitedPlanetA = true;
	Player.phy_linear_velocity_x = 0;
	Player.phy_linear_velocity_y = 0;
	Player.x = 1300;
	Player.y = 3400;
	GameManager.vaxCount -= 1; //decreases the vaxCount when visiting planet first time.
}
