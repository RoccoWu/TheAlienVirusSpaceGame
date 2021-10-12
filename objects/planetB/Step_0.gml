/// @description Insert description here
// You can write your code in this editor
if (distance_to_object(Player) < 1)
{
	if (!Player.visitedPlanetB)
	{
		Player.StopThrusterSound();
		room = CutscenePlanet1;
		Player.visitedPlanetB = true;
		Player.active = false;
		Player.phy_linear_velocity_x = 0;
		Player.phy_linear_velocity_y = 0;
		Player.x = 3830;
		Player.y = 2650;
		Player.playerHealth = Player.maxHealth;
		global.vaxCount -=1; //decreases the vaxCount when visiting planet first time.
	}
}