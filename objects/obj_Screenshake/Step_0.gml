//if (keyboard_check_pressed(vk_space))
//{
//	global.shakeIntensity += global.cloudJumpShake;
//}

// Clamp shake so it doesn't scoot into seizure territory
if (global.shakeIntensity > maxShakeIntensity)
{
	global.shakeIntensity = maxShakeIntensity;
}

// Set interpolant
var deltaTime = 1 / room_speed;
var t = shakeSpeed * deltaTime;

//var velX = (Player.phy_linear_velocity_x - lastPlayerVelocityX) * deltaTime;
//var velY = (Player.phy_linear_velocity_y - lastPlayerVelocityY) * deltaTime;
//var accelerationShake = sqrt(velX * velX + velY * velY) * accelerationShakeIntensity - minAccelerationShake;
//show_debug_message(accelerationShake);
//lastPlayerVelocityX = Player.phy_linear_velocity_x;
//lastPlayerVelocityY = Player.phy_linear_velocity_y;

// Don't shake if intensity is less than 0
if (global.shakeIntensity < 0 && accelerationShake < 0)
{
	global.shakeValueX = 0;
	global.shakeValueY = 0;
	global.shakeValueZ = 0;
	
	return;
}

var realShakeIntensity = global.shakeIntensity + global.accelerationShake;

// Lerp for a slightly smoother shake
global.shakeValueX = lerp(global.shakeValueX, random_range(-realShakeIntensity, realShakeIntensity), t);
global.shakeValueY = lerp(global.shakeValueY, random_range(-realShakeIntensity, realShakeIntensity), t);
global.shakeValueZ = lerp(global.shakeValueZ, random_range(-realShakeIntensity, realShakeIntensity) * rotationShakeMultiplier, t);

//global.shakeIntensity -= shakeDecay * deltaTime;
global.shakeIntensity = lerp (global.shakeIntensity, 0, shakeDecay * deltaTime);
if (global.shakeIntensity < 0)
{
	global.shakeIntensity = 0;
}

global.accelerationShake = lerp (global.accelerationShake, 0, shakeDecay * deltaTime);
if (global.accelerationShake < 0)
{
	global.accelerationShake = 0;
}