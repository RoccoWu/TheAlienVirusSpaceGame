function Ease(x)
{
	//if (x == 1)
	//{
	//	return x;
	//}
	//else
	//{
	//	return 1 - power(2, -10 * x);
	//}
	
	//if (x < 0.5)
	//{
	//	
	//}
	
	//return x < 0.5 ? 16 * x * x * x * x * x : 1 - (-2 * x + 2) * (-2 * x + 2) * (-2 * x + 2) * (-2 * x + 2) * (-2 * x + 2) / 2;
	return 1 - ((1 - x) * (1 - x) * (1 - x) * (1 - x) * (1 - x));
}