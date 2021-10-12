if (active)
{
	weaponsSystemOnline = visitedPlanetA && visitedPlanetB;
	
	var accelerationShake = 0;
	
	if (keyboard_check(ord("W")))
	{
		// Fire back thruster
		physics_apply_local_force(0, 25, 0, -thrusterForceFront);
		// apply one impulse??
		//physics_apply_force(x, y, 0, -thrusterForceFront);
	
		var localPosBottom = LocalPosition(self, x, y + 25);
		effect_create_below(ef_smoke, localPosBottom.x, localPosBottom.y, 0.05, c_grey);
		//effect_create_above(ef_smoke, x + cos(phy_rotation * pi / 180 + pi / 2) * sprite_width * 0.5, y + sin(phy_rotation * pi / 180 + pi / 2) * sprite_height * 0.5, .1, c_gray);
		//effect_create_above(ef_smoke, x + cos(phy_rotation * pi / 180) * sprite_width * 0.5, y + sin(phy_rotation * pi / 180) * sprite_height * 0.5, .1, c_gray);
		//effect_create_above(ef_smoke, x + cos(phy_rotation * pi / 180 + pi) * sprite_width * 0.5, y + sin(phy_rotation * pi / 180 + pi) * sprite_height * 0.5, .1, c_gray);
		accelerationShake += global.thrusterShakeIntensity;
	}
	if (keyboard_check(ord("S")))
	{
		physics_apply_local_force(-21, 22 - 17, 0, thrusterForceFront / 2);
		var localPosBottom = LocalPosition(self, x - 21, y + 22 - 17);
		effect_create_below(ef_smoke, localPosBottom.x, localPosBottom.y, 0.05, c_grey);
		
		physics_apply_local_force(21, 22 - 17, 0, thrusterForceFront / 2);
		var localPosBottom = LocalPosition(self, x + 21, y + 22 - 17);
		effect_create_below(ef_smoke, localPosBottom.x, localPosBottom.y, 0.05, c_grey);
		
		// Fire front thruster
		//physics_apply_local_force(0, -32, 0, thrusterForceFront);
	
		//var localPosBottom = LocalPosition(self, x, y - 32);
		//effect_create_below(ef_smoke, localPosBottom.x, localPosBottom.y, 0.05, c_grey);
		//effect_create_above(ef_spark, x + cos(phy_rotation * pi / 180 - pi / 2) * sprite_width * 0.5, y + sin(phy_rotation * pi / 180 - pi / 2) * sprite_width * 0.5, 100, c_yellow);
		accelerationShake += global.thrusterShakeIntensity;
	}
	if (keyboard_check(ord(rightThrusterKey)))
	{
		// Fire left thruster
		physics_apply_local_force(-21, 22, 0, -thrusterForceSide);
	
		var localPosBottom = LocalPosition(self, x - 21, y + 22);
		effect_create_below(ef_smoke, localPosBottom.x, localPosBottom.y, 0.05, c_grey);
		//effect_create_above(ef_smoke, x + cos(phy_rotation * pi / 180) * sprite_width * 0.5, y + sin(phy_rotation * pi / 180) * sprite_width * 0.5, .1, c_gray);
		accelerationShake += global.thrusterShakeIntensity;
	}
	if (keyboard_check(ord(leftThrusterKey)))
	{
		// Fire right thruster
		physics_apply_local_force(21, 22, 0, -thrusterForceSide);
	
		var localPosBottom = LocalPosition(self, x + 21, y + 22);
		effect_create_below(ef_smoke, localPosBottom.x, localPosBottom.y, 0.05, c_grey);
		//effect_create_above(ef_smoke, x + cos(phy_rotation * pi / 180 + pi) * sprite_width * 0.5, y + sin(phy_rotation * pi / 180 + pi) * sprite_width * 0.5, .1, c_gray);
		accelerationShake += global.thrusterShakeIntensity;
	}

	// Apply an impulse when a thruster first activates (WILL NEED SOME KIND OF COOLDOWN OR DIMINISHING RETURNS)
	if (keyboard_check_pressed(ord("W")))
	{
		// Fire back thruster
		physics_apply_local_impulse(0, 25, 0, -thrusterImpulseFront);
		thrusterSoundW = audio_play_sound(ThrusterFire, 10, true);
	}
	if (keyboard_check_pressed(ord("S")))
	{
		// Fire front thruster
		physics_apply_local_impulse(-21, 22 - 17, 0, thrusterImpulseFront / 2);
		physics_apply_local_impulse(21, 22 - 17, 0, thrusterImpulseFront / 2);
		thrusterSoundS = audio_play_sound(ThrusterFire, 10, true);
	}
	if (keyboard_check_pressed(ord(rightThrusterKey)))
	{
		// Fire left thruster
		physics_apply_local_impulse(-21, 22, 0, -thrusterImpulseSide);
		thrusterSoundD = audio_play_sound(ThrusterFire, 10, true);
	}
	if (keyboard_check_pressed(ord(leftThrusterKey)))
	{
		// Fire right thruster
		physics_apply_local_impulse(21, 22, 0, -thrusterImpulseSide);
		thrusterSoundA = audio_play_sound(ThrusterFire, 10, true);
	}
	
	// On release
	if (keyboard_check_released(ord("W")))
	{
		audio_stop_sound(thrusterSoundW);
	}
	if (keyboard_check_released(ord("S")))
	{
		audio_stop_sound(thrusterSoundS);
	}
	if (keyboard_check_released(ord(rightThrusterKey)))
	{
		audio_stop_sound(thrusterSoundD);
	}
	if (keyboard_check_released(ord(leftThrusterKey)))
	{
		audio_stop_sound(thrusterSoundA);
	}
	
	// Stabilizers
	if (keyboard_check_pressed(vk_space))
	{
		thrusterSoundSpace = audio_play_sound(ThrusterFire, 10, true);
	}
	if (keyboard_check(vk_space))
	{
		physics_apply_force(x, y, -phy_linear_velocity_x * stabilizeForce, -phy_linear_velocity_y * stabilizeForce);
		physics_apply_torque(-phy_angular_velocity * stabilizeTorque);
		
		var localPosBottom = LocalPosition(self, x, y + 25);
		effect_create_above(ef_smoke, localPosBottom.x, localPosBottom.y, 0.05, c_grey);
		
		localPosBottom = LocalPosition(self, x, y - 32);
		effect_create_above(ef_smoke, localPosBottom.x, localPosBottom.y, 0.05, c_grey);
		
		localPosBottom = LocalPosition(self, x - 21, y + 22);
		effect_create_above(ef_smoke, localPosBottom.x, localPosBottom.y, 0.05, c_grey);
		
		localPosBottom = LocalPosition(self, x + 21, y + 22);
		effect_create_above(ef_smoke, localPosBottom.x, localPosBottom.y, 0.05, c_grey);
		
		accelerationShake += global.thrusterShakeIntensity;
	}
	if (keyboard_check_released(vk_space))
	{
		audio_stop_sound(thrusterSoundSpace);
	}
	
	// Apply screen shake from thrusters
	if (accelerationShake > 0)
	{
		global.accelerationShake = accelerationShake;
	}
	
	// Show tutorial
	if (keyboard_check_pressed(ord("T")))
	{
		showTutorial = true;
		tutorialAlpha = 1;
		tutorialVisibleTimer = 0;
	}
	
	
	//Player's weapons
	if(weaponsSystemOnline)
	{
		weaponsDelayTimer--;
		
		if(playerCanShoot)
		{
			if(mouse_check_button_pressed(mb_left))
			{	
				var mouseDirection = degtorad(point_direction(x, y, mouse_x, mouse_y));
				firePlayerProjectile = instance_create_depth(x + cos(mouseDirection) * 100, y + sin(mouseDirection) * -100, 1, PlayerProjectile);
				playerCanShoot = false;
				weaponsDelayTimer = 2 * room_speed;
				audio_play_sound(PlayerShootMissle, 0, false);
				global.shakeIntensity += 20;
			}
		}
	}
	
	if(weaponsDelayTimer <=0)
	{
		playerCanShoot = true;
	}
	
	if (playerHealth < maxHealth * 0.15)
	{
		image_index = 2;
	}
	else if (playerHealth < maxHealth * 0.5)
	{
		image_index = 1;
	}
	else
	{
		image_index = 0;
	}
}

// Damage from collision cooldown timer
collisionCooldownTimer += 1 / room_speed;

function StopThrusterSound()
{
	//if (keyboard_check(ord("W")) || keyboard_check(ord("S")) || keyboard_check(ord("D")) || keyboard_check(ord("A")) || keyboard_check(vk_space))
	//{
	//	return;
	//}
	
	audio_stop_sound(ThrusterFire);
}

if (playerHealth <= 0)
{
	StopThrusterSound();
	instance_destroy(self);
	room = LoseScreen;
}