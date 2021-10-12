// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SkipDialogue(dialogueBox){
	if (!is_array(dialogueBox.dialogue)){
		if (dialogueBox.index < string_length(dialogueBox.dialogue)){
			dialogueBox.index = string_length(dialogueBox.dialogue) - 1;
		}
	}
	else{
		if (dialogueBox.index < string_length(dialogueBox.dialogue[0])){
			dialogueBox.index = string_length(dialogueBox.dialogue[0]) - 1;
		}
	}
}