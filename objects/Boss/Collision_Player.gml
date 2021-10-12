/// @description Insert description here
// You can write your code in this editor
if(playerCollide)
{
	bossDamage = 10;
	Player.playerHealth -= bossDamage;
	playerCollide = false;
	playerCollideTimer = 2 * room_speed;
}