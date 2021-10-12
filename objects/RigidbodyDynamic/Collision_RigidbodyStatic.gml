// On collision with other static rigidbody

var collisionDirX = phy_collision_x[0] - x;
var collisionDirY = phy_collision_y[0] - y;
var collisionDirMagnitude = sqrt(collisionDirX * collisionDirX + collisionDirY * collisionDirY);
collisionDirX /= collisionDirMagnitude;
collisionDirY /= collisionDirMagnitude;
collisionSpeed = abs(dot_product(collisionDirX, collisionDirY, phy_linear_velocity_x, phy_linear_velocity_y));
collisionIsDynamic = false;

collisionDirX = other.phy_collision_x[0] - other.x;
collisionDirY = other.phy_collision_y[0] - other.y;
collisionDirMagnitude = sqrt(collisionDirX * collisionDirX + collisionDirY * collisionDirY);
collisionDirX /= collisionDirMagnitude;
collisionDirY /= collisionDirMagnitude;
var collisionSpeedOther = abs(dot_product(collisionDirX, collisionDirY, other.phy_linear_velocity_x, other.phy_linear_velocity_y));
collisionSpeed += collisionSpeedOther;
collisionSpeed /= 2;

//with (other)
//{
//	var collisionDirX = phy_collision_x[0] - x;
//	var collisionDirY = phy_collision_y[0] - y;
//	var collisionDirMagnitude = sqrt(collisionDirX * collisionDirX + collisionDirY * collisionDirY);
//	collisionDirX /= collisionDirMagnitude;
//	collisionDirY /= collisionDirMagnitude;
//	var collisionSpeed = abs(dot_product(collisionDirX, collisionDirY, phy_linear_velocity_x, phy_linear_velocity_y));
//	this.collisionSpeed += collisionSpeed;
//	this.collisionSpeed /= 2;
//}

event_user(15);