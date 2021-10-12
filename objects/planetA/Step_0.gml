/// @description Insert description here
// You can write your code in this editor
if (distance_to_object(Player) < 1)
{
	if (!Player.visitedPlanetA)
	{
		//audio_stop_sound(ThrusterFire);
		Player.StopThrusterSound();
		room = CutscenePlanet0;
		Player.active = false;
		Player.visitedPlanetA = true;
		Player.phy_linear_velocity_x = 0;
		Player.phy_linear_velocity_y = 0;
		Player.x = 864;
		Player.y = 3900;
		Player.playerHealth = Player.maxHealth;
		global.vaxCount -= 1; //decreases the vaxCount when visiting planet first time.
	}
}