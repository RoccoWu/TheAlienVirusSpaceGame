var this = self;
with(RigidbodyDynamic)
{
	//show_message(distance_to_object(this));
	// Only affect rigidbodies within a radius
	if (distance_to_object(this) < this.radius)
	{
		//show_message(self);
		// Calculate direction and distances
		var xDir = this.x - x;
		var yDir = this.y - y;
		var distanceSqr = xDir * xDir + yDir * yDir;
		var distance = sqrt(distanceSqr);
		xDir /= distance;
		yDir /= distance;
		
		var distanceExp = animcurve_channel_evaluate(animcurve_get_channel(GravityWellCurve, "curve1"), InverseLerp(distance, this.radius, 0));
		
		// Calculate and clamp forces
		var xForce = xDir * distanceExp * this.force;
		var yForce = yDir * distanceExp * this.force;
		if (xForce > this.maxForce)
		{
			xForce = this.maxForce;
		}
		if (yForce > this.maxForce)
		{
			yForce = this.maxForce;
		}
		
		physics_apply_force(x, y, xForce, yForce);
	}
}