/// @description Insert description here
// You can write your code in this editor
box = instance_create_layer(160, 520, "Instances", DialogueBox);

phase = 0;
if (room == Title){
	with(box){
		x = 1000000;
		y = 1000000;
	}
	planet = -2;
}
else if (room == CutsceneIntro){
	with (box){
		speaker = "The Director";
		dialogue = "Hostile aliens have invaded the galaxy and released a deadly virus into the populace.";
	}
	planet = -1;
}
else if (room == CutscenePlanet0){
	with (box){
		speaker = "You";
		dialogue = "This is alpha seven thirteen. I've got a freighter full of vaccines for this planet. Requesting permission to land.";
	}
	planet = 0;
	layer_background_sprite(layer_background_get_id(layer_get_id("Background")), Background1_1);
}
else if (room == CutscenePlanet1){
	with (box){
		speaker = "You";
		dialogue = "Oh my god. What is going on down there.";
	}
	planet = 1;
}
else if (room == CutscenePlanet2){
	with (box){
		speaker = "Alien";
		dialogue = "You'd best turn around and head back where you came from.";
	}
	planet = 2;
}
else if (room = LoseScreen){
	box.x = 100000;
	box.y = 100000;
	planet = 3;
}
else if (room == WinScreen){
	with(box){
		speaker = "";
		dialogue = "You have eradicated the virus and returned normalcy to the galaxy! Press space to play again."
	}
	planet = 4;
}