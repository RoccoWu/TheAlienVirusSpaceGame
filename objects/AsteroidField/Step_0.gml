var this = self;

for (var i = 0; i < ds_list_size(rocks); i++)
{
	with (rocks[|i])
	{
		var dirX = this.x - x;
		var dirY = this.y - y;
		var magnitude = sqrt(dirX * dirX + dirY * dirY);
		dirX /= magnitude;
		dirY /= magnitude;
		
		////var crossX = dirY * 1 - 0 * 0;
        ////var crossY = 0 * 0 - dirX * 1;
        ////var crossZ = lhs.x * rhs.y - lhs.y * rhs.x
		var angle = arctan2(dirY, dirX) + pi / 2;
		var tangentialX = cos(angle);
		var tangentialY = sin(angle);
		
		physics_apply_force(x, y, tangentialX * this.tangentialForce + dirX * this.inwardForce * phy_mass, tangentialY * this.tangentialForce + dirY * this.inwardForce * phy_mass);
	
		//physics_apply_force(x, y, 0 * phy_mass, 100 * phy_mass);
	}
}

//with (Asteroid)
//{
//	if (distance_to_object(this) < this.radius)
//	{
//		//var dirX = this.x - x;
//		//var dirY = this.y - y;
//		//var magnitude = sqrt(dirX * dirX + dirY * dirY);
//		//dirX /= magnitude;
//		//dirY /= magnitude;
		
//		////var crossX = dirY * 1 - 0 * 0;
//        ////var crossY = 0 * 0 - dirX * 1;
//        ////var crossZ = lhs.x * rhs.y - lhs.y * rhs.x
//		//var angle = arctan2(dirY, dirX) + pi / 2;
//		//var tangentialX = cos(angle);
//		//var tangentialY = sin(angle);
		
//		//var dirX = this.x - x;
//		//var dirY = this.y - y;
//		//var distanceSqr = dirX * dirX + dirY * dirY;
//		//var distance = sqrt(distanceSqr);
//		//dirX /= distance;
//		//dirY /= distance;
		
//		//physics_apply_local_force(0, 0, dirX * this.inwardForce, dirY * this.inwardForce);
//	}
//}

//with(RigidbodyDynamic)
//{
//	//show_message(distance_to_object(this));
//	// Only affect rigidbodies within a radius
//	if (distance_to_object(this) < this.radius)
//	{
//		//show_message(self);
//		// Calculate direction and distances
//		var xDir = this.x - x;
//		var yDir = this.y - y;
//		var distanceSqr = xDir * xDir + yDir * yDir;
//		var distance = sqrt(distanceSqr);
//		xDir /= distance;
//		yDir /= distance;
		
//		// Calculate and clamp forces
//		var xForce = xDir * this.inwardForce;
//		var yForce = yDir * this.inwardForce;
		
//		physics_apply_force(x, y, xForce, yForce);
//	}
//}