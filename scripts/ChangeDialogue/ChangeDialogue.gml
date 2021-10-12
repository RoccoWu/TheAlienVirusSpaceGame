//dialogueBox must be a DialogueBox object
function ChangeDialogue(dialogueBox, newText, newSpeaker, newSprite){	
	if (!is_array(dialogueBox.dialogue)){
		if (dialogueBox.index >= string_length(dialogueBox.dialogue))
		{
			dialogueBox.speaker = newSpeaker;
			dialogueBox.dialogue = newText;
			dialogueBox.index = 0;
			layer_background_sprite(layer_background_get_id(layer_get_id("Background")), newSprite);
			dialogueBox.alarm[0] = dialogueBox.dialogueSpeed;
			DialogueManager.phase++;
		}
	}
	else{
		if (dialogueBox.index >= string_length(dialogueBox.dialogue[0]))
		{
			dialogueBox.speaker = newSpeaker;
			dialogueBox.dialogue = newText;
			dialogueBox.index = 0;
			layer_background_sprite(layer_background_get_id(layer_get_id("Background")), newSprite);
			dialogueBox.alarm[0] = dialogueBox.dialogueSpeed;
			DialogueManager.phase++;
		}
	}
}