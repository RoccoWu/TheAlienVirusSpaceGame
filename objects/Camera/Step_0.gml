/// @description Insert description here
// You can write your code in this editor
camWidth = camera_get_view_width(view_camera[0]); //sets camHeight to the viewport width of camera 0
camHeight = camera_get_view_height(view_camera[0]); //sets camHeight to the viewport height of camera 0

if (room == Overworld){
	xFollow = Player.x -camWidth/2; //keeps the viewport center on the width
	yFollow = Player.y -camHeight/2; //keeps the viewport center on the height

	//camera follow
	if(Player.x < camWidth/2)
	{
		xFollow = 0;	
	}

	if(Player.x > room_width - camWidth/2)
	{
		xFollow = room_width - camWidth;	
	}

	if(Player.y < camHeight/2)
	{
		yFollow = 0;
	}

	if(Player.y > room_height - camHeight/2)
	{
		yFollow = room_height - camHeight;	
	}

	camera_set_view_pos(view_camera[0], xFollow + global.shakeValueX, yFollow + global.shakeValueY); //camera viewport will always follow the player
	camera_set_view_angle(view_camera[0], global.shakeValueZ);
}

if (keyboard_check_pressed(vk_f1))
{
	window_set_fullscreen(!window_get_fullscreen());
}