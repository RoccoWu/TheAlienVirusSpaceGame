/// @description Insert description here
// You can write your code in this editor
if (!is_array(dialogue)){
	if (index < string_length(dialogue)){
		index++;
		alarm[0] = dialogueSpeed;
	}
}
else {
	if (index < string_length(dialogue[0])){
		index++;
		alarm[0] = dialogueSpeed;
	}
}
