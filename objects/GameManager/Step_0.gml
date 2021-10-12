/// @description Insert description here
// You can write your code in this editor

if(global.vaxCount <=0) //if player has delivered all vaccines, they win.
{
	win = true;	
}

//room boundaries
if(Player.x >= room_width)
{
	Player.x = xprevious;
}

else if(Player.x <= 0)
{
	Player.x = xprevious;
}

else if(Player.y >= room_height)
{
	Player.y = yprevious;
}

else if(Player.y <= 0)
{
	Player.y = xprevious;
}

//boundary warnings
with(Player)
{	
	//when in range	
	if(abs(Player.x - room_width) <= GameManager.boundary || abs(Player.x) <= GameManager.boundary || (abs(Player.y - room_height) <= GameManager.boundary || (abs(Player.y) <= GameManager.boundary))) //right side of room
	{
		//show UI and play sound
		if(!showboundaryUI)
		{
			audio_play_sound(BoundaryWarning, 1, true);
		}
		showboundaryUI = true;		
	}
	
	//when out of range
	
	else
	{
		//show UI 
		showboundaryUI = false;
		audio_stop_sound(BoundaryWarning);
	}
}

//boss
Boss.x = 1920;
Boss.y = 1184;
Boss.phy_rotation = 0;