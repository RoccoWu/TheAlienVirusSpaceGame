/// @description OnCollision
event_inherited();

if (collisionCooldownTimer > collisionCooldownTime)
{
	//show_message(collisionSpeed);
	global.shakeIntensity += collisionSpeed * 5;
	
	// Only damage if not in cooldown
	if (collisionSpeed >= minCollisionSpeedForDamage)
	{
		var speedFrac = clamp(InverseLerp(collisionSpeed, 12, 50), 0, 1);
		var damage = lerp(3, 15, speedFrac);
		playerHealth -= damage;
		
		collisionCooldownTimer = 0;
		
		audio_play_sound(AsteroidHitTemp, 0, false);
	}
}