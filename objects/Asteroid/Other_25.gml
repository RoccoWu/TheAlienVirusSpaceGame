/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (collisionCooldownTimer > collisionCooldownTime)
{
	// Only damage if not in cooldown
	if (collisionSpeed >= minCollisionSpeedForDamage)
	{
		var speedFrac = clamp(InverseLerp(collisionSpeed, 12, 70), 0, 1);
		var damage = 0;
		if (otherIsPlayer)
		{
			damage = lerp(20, 100, speedFrac);
		}
		else
		{
			damage = lerp(2, 8, speedFrac);
		}
		
		integrity -= damage;
		
		collisionCooldownTimer = 0;
		
		if (integrity <= 0)
		{
			ds_list_delete(AsteroidField.rocks, ds_list_find_index(AsteroidField.rocks, self));
			destroying = true;
			phy_active = false;
			
			sprite_index = destroySprite;
		}
	}
}