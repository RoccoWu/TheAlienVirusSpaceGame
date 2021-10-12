if (active)
{
	draw_self();
	
	var deltaTime = 1 / room_speed;
	
	if (showTutorial)
	{
		draw_set_alpha(tutorialAlpha);
		
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_color(GameManager.yellowColor);
		
		var localPosition = LocalPosition(self, x, y + 36);
		draw_text(localPosition.x, localPosition.y, "W");
		
		localPosition = LocalPosition(self, x, y - 43);
		draw_text(localPosition.x, localPosition.y, "S");
		
		localPosition = LocalPosition(self, x - 32, y + 33);
		draw_text(localPosition.x, localPosition.y, "D");
		
		localPosition = LocalPosition(self, x + 32, y + 33);
		draw_text(localPosition.x, localPosition.y, "A");
		
		draw_text(x, y - 80, "HOLD SPACE TO STABILIZE");
		
		tutorialVisibleTimer += deltaTime;
		
		if (tutorialVisibleTimer > tutorialVisibleTime)
		{
			tutorialAlpha -= tutorialFadeSpeed * deltaTime;
			
			if (tutorialAlpha <= 0)
			{
				showTutorial = false;
				tutorialAlpha = 1;
				tutorialVisibleTimer = 0;
			}
		}
		
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		
		draw_set_alpha(1);
	}
	
	if (showPointer)
	{
		
		var closestPlanet = -1;
		var distance = 0;
		var color = colorA;
		
		if (visitedPlanetA && !visitedPlanetB)
		{
			closestPlanet = planetB;
			distance = distance_to_point(planetB.x, planetB.y);
			color = colorB;
		}
		else if (visitedPlanetB && !visitedPlanetA)
		{
			closestPlanet = planetA;
			distance = distance_to_point(planetA.x, planetA.y);
			color = colorA;
		}
		else if (!visitedPlanetA && !visitedPlanetB)
		{
			closestPlanet = planetA;
			distance = distance_to_point(planetA.x, planetA.y);
			color = colorA;
			
			var tempDistance = distance_to_point(planetB.x, planetB.y);
			if (tempDistance < distance)
			{
				distance = tempDistance;
				closestPlanet = planetB;
				color = colorB;
			}
		}
		else
		{
			closestPlanet = planetC;
			distance = distance_to_point(planetC.x, planetC.y);
			color = colorC;
		}
		
		var angle = point_direction(x, y, closestPlanet.x, closestPlanet.y) - 90;
		
		pointerColor = merge_color(pointerColor, color, pointerColorSpeed * deltaTime);
		pointerRotation = lerp(pointerRotation, angle, pointerMoveSpeed * deltaTime);
		draw_sprite_ext(CirclePointer, 0, x, y, 1, 1, pointerRotation, pointerColor, 0.3);
	}
}