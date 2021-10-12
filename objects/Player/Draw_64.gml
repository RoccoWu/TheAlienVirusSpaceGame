if (active)
{
	if (weaponsSystemOnline && weaponsDelayTimer > 0)
	{
		draw_set_alpha(0.75);
		draw_rectangle_color(1280 / 2 - 100, 20, 1280 / 2 + 100, 35, GameManager.yellowColor, GameManager.yellowColor, GameManager.yellowColor, GameManager.yellowColor, true);
		var fillAmount = Ease(1 - (weaponsDelayTimer / (2 * room_speed))) * 200;
		draw_rectangle_color(1280 / 2 - 100, 20, 1280 / 2 - 100 + fillAmount, 35, GameManager.yellowColor, GameManager.yellowColor, GameManager.yellowColor, GameManager.yellowColor, false);
		draw_set_alpha(1);
	}
}