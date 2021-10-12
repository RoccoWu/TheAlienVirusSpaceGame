/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(vk_space)){
	SkipDialogue(box);
	if (planet = -2){
		room = CutsceneIntro;
	}
	else if (planet == -1){
		if (phase == 0){
			ChangeDialogue(box, "You must deliver vaccines to the three planets in this system to free them from these invaders. Press space when you're ready to start your mission.", "The Director", Background1_1);
		}
		else if (phase == 1 and box.index >= string_length(box.dialogue)){
			room = Overworld;
			Player.active = true;
			Player.x = 1700;
			Player.y = 4000;
		}
	}
	else if (planet == 0){
		if (phase == 0){
			ChangeDialogue(box, ["Permission granted. We sure are glad to see you. We've been living in fear of the virus for too long.", "I'm happy to help.", "You still gotta be careful. I don't have enough vaccines for everyone."], "Alien", Background1_1);
		}
		else if (phase == 1){
			ChangeDialogue(box, "I've just landed. Bring your people to my ship and I'll start administering shots.", "You", Background1_2);
		}
		else if (phase == 2){
			ChangeDialogue(box, "Alright everyone, form a line and we'll get as many people vaccinated as possible.", "You", Background1_3);
		}
		else if (phase == 3){
			ChangeDialogue(box, "Thank you so much! I'm so excited to see my parents again!", "Patient", Background1_3);
		}
		else if (phase == 4){
			ChangeDialogue(box, "Thanks to your enthusiasm we managed to get a vaccine in half the populations' arms. You still have to be wary but you should be able to return to a somehwat normal existence.", "You", Background1_4);
		}
		else if (phase == 5){
			ChangeDialogue(box, "Thank you!!!", "Everyone", Background1_4);
		}
		else if (phase == 6 && Player.visitedPlanetA && Player.visitedPlanetB){
			ChangeDialogue(box, "Please take this weapon. It's the only way you'll need it if you're going to reach the green planet.", "Alien", Background1_4);
		}
		else if (box.index >= string_length(box.dialogue)){
			room = Overworld;
			Player.active = true;
		}
	}
	else if (planet == 1){
		if (phase == 0){
			ChangeDialogue(box, "Why are all those people in that cage?", "You", Background2_5);
		}
		else if (phase == 1){
			ChangeDialogue(box, ["What are you doing on my planet?", "I'm here to administer vaccines to protect y'all from the deadly virus that's been stampeding through the galaxy.", "It's none of your business"], "Alien", Background2_3);
		}
		else if (box.choice == 1){
			if (phase == 2){
				ChangeDialogue(box, "Your medicine won't do us any good. The only way for us to get protection is to be infected.", "Alien", Background2_3);	
			}
			else if (phase == 3){
				ChangeDialogue(box, "Please just let me try. What do you have to lose?", "You", Background2_2);
			}
			else if (phase == 4){
				ChangeDialogue(box, "Fine. Just know that all your giving them is false hope.", "Alien", Background2_2);
			}
			else if (phase == 5){
				phase = 10;
				box.choice = 0;
			}
		}
		else if (box.choice == 2){
			if (phase == 2){
				ChangeDialogue(box, "Actually it is my business. We are working on a very sensitive project and we don't need outsiders messing it up.", "Alien", Background2_3);
			}
			else if (phase == 3){
				ChangeDialogue(box, "What kind of project puts people into cages like that?", "You", Background2_2);
			}
			else if (phase == 4){
				ChangeDialogue(box, "We have to infect everyone on the planet. It's the only way for us to develop immunity. Your vaccine doesn't work on us.", "Alien", Background2_3);
			}
			else if (phase == 5){
				ChangeDialogue(box, "What are you talking about? We did tests on your people and it worked great.", "You", Background2_2);
			}
			else if (phase == 6){
				ChangeDialogue(box, "That's not what the alien from the green planet said.", "Alien", Background2_3);
			}
			else if (phase == 7){
				ChangeDialogue(box, "Will you please just let me try?", "You", Background2_2);
			}
			else if (phase == 8){
				ChangeDialogue(box, "Fine, but it's not going to help them.", "You", Background2_3);
			}
			else if (phase == 9){
				phase = 10;
				box.choice = 0;
			}
		}
		else if (phase == 10){
			ChangeDialogue(box, "Here take these vaccines. You'll be protected from the virus now, so you can return to your normal life.", "You", Background2_4);
		}
		else if (phase == 11){
			ChangeDialogue(box, "But these won't help us. The only way for us to truly be safe is to take out the source of the virus at the green planet.", "Alien", Background2_4);
		}
		else if (phase == 12){
			ChangeDialogue(box, "The green planet used to be our sun but then the aliens turned into a home world for their virus.", "Alien", Background2_4);
		}
		else if (phase == 13 && Player.visitedPlanetA && Player.visitedPlanetB){
			ChangeDialogue(box, "Please take this weapon. It's the only way you'll need it if you're going to reach the green planet.", "Alien", Background2_4);
		}
		else if (box.index >= string_length(box.dialogue)){
			room = Overworld;	
			Player.active = true;
		}
	}
	else if (planet == 3){
		if (layer_background_get_speed(layer_background_get_id(layer_get_id("Background"))) == 0){
			room = CutsceneIntro;
		}
	}
	else if (planet == 4){
		if (layer_background_get_speed(layer_background_get_id(layer_get_id("Background"))) == 0){
			room = CutsceneIntro;
		}
	}
}
if (room == WinScreen){
	if (layer_background_get_index(layer_background_get_id(layer_get_id("Background"))) > 29){
		layer_background_speed(layer_background_get_id(layer_get_id("Background")), 0);
	}
} 
if (room == LoseScreen){
	if (layer_background_get_index(layer_background_get_id(layer_get_id("Background"))) > 18){
		layer_background_speed(layer_background_get_id(layer_get_id("Background")), 0);
	}
} 