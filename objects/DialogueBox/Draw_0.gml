/// @description Insert description here
// You can write your code in this editor
draw_self();

if (!is_array(dialogue)) {
	draw_text(x + 64, y + 32, speaker);
	draw_text_ext(x + 64, y + 64, string(string_copy(dialogue, 1, index)), 16, sprite_width - 128);
}
else {
	draw_text(x + 64, y + 32, speaker);
	draw_text_ext(x + 64, y + 64, string(string_copy(dialogue[0], 1, index)), 16, sprite_width - 128);
	if (index >= string_length(dialogue[0])){
		if (choice == 1){
			draw_text_ext_color(x + 64, y + 112, "1. " + dialogue[1], 16, sprite_width - 128, c_yellow, c_yellow, c_yellow, c_yellow, 1);
			draw_text_ext(x + 64, y + 128, "2. " + dialogue[2], 16, sprite_width - 128);
		}
		else{
			draw_text_ext(x + 64, y + 112, "1. " + dialogue[1], 16, sprite_width - 128);
			draw_text_ext_color(x + 64, y + 128, "2. " + dialogue[2], 16, sprite_width - 128, c_yellow, c_yellow, c_yellow, c_yellow, 1);
		}
	}
}

	
