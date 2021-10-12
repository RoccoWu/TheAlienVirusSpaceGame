function LocalPosition(object, x, y)
{
	//var rotatedX = cos(angle) * (x - other.x) - sin(angle) * (y-other.y) + other.x;
	//var rotatedY = sin(angle) * (x - other.x) + cos(angle) * (y - other.y) + other.y;
	var rotatedX = cos(object.phy_rotation * pi / 180) * (x - object.x) - sin(object.phy_rotation * pi / 180) * (y - object.y) + object.x;
	var rotatedY = sin(object.phy_rotation * pi / 180) * (x - object.x) + cos(object.phy_rotation * pi / 180) * (y - object.y) + object.y;

	position = 
	{
		x : rotatedX,
		y : rotatedY
	};
	
	return position;
}