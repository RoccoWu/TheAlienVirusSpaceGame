event_inherited();

thrusterForceFront = 24;
thrusterForceSide = 8;
thrusterImpulseFront = 12;
thrusterImpulseSide = 4;

thrusterSoundW = -1;
thrusterSoundS = -1;
thrusterSoundD = -1;
thrusterSoundA = -1;
thrusterSoundSpace = -1;

stabilizeForce = 0.4;
stabilizeTorque = 0.2;

maxHealth = 100;
playerHealth = maxHealth;

minCollisionSpeedForDamage = 12; // idk we'll have to change this number later
collisionCooldownTime = 2;
collisionCooldownTimer = 0;

leftThrusterKey = "A";
rightThrusterKey = "D";

active = false;

playingSound = false; // too lazy to take this out, it should always be FALSE

visitedPlanetA = false;
visitedPlanetB = false;
visitedPlanetC = false;

weaponsSystemOnline = true; //set this to false in actual game
weaponsDelayTimer = 0;
playerCanShoot = true;

showTutorial = true;
tutorialAlpha = 1.0;
tutorialVisibleTime = 5;
tutorialVisibleTimer = 0;
tutorialFadeSpeed = 1;

showPointer = true;
pointerRotation = 0;
pointerMoveSpeed = 1.5;
pointerColor = colorB;
pointerColorSpeed = 1;