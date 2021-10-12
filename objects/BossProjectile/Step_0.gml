/// @description Insert description here
// You can write your code in this editor
projectileLifeTimer--;

if(projectileLifeTimer <=0)
{
	instance_destroy(id);	
}