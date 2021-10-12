/// @description Insert description here
// You can write your code in this editor
projectileDamage = random_range(5,10);
Player.playerHealth -= projectileDamage;
instance_destroy(id);
audio_play_sound(BossMissleHitsPlayer, 1, false);