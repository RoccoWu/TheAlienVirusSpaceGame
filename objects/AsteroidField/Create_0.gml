radius = 300;
tangentialForce = 140;
inwardForce = 6;

rocks = ds_list_create();

var this = self;
with (Asteroid)
{
	if (distance_to_object(this) < this.radius)
	{
		ds_list_add(this.rocks, self);
	}
}