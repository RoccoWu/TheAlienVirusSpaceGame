/// @description Insert description here
// You can write your code in this editor

//proximity code


if(distance_to_object(Player) < 700)
{
	if(projectileDelayTimer >= 0)
	{
		projectileDelayTimer--;	
	}

	else if(projectileDelayTimer < 0)
	{
		canShoot = true;	
	}

	if(canShoot) //not sure if this will work
	{
		var dirToPlayer = degtorad(point_direction(x, y, Player.x, Player.y));
		instance_create_depth(x + cos(dirToPlayer) * 150, y + sin(dirToPlayer) * -150, 1, BossProjectile);
		projectileDelayTimer = 3 * room_speed;
		canShoot = false;
	}

	if(playerCollide == false)
	{
	playerCollideTimer--;	
	}

	if(playerCollideTimer <= 0)
	{
		playerCollide = true;	
	}
}

if (bossHealth <= 0){
	instance_destroy(Player);
	room = WinScreen;
}
