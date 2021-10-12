if (!audio_is_playing(InSpace))
{
	audio_stop_all();
	audio_play_sound(InSpace, 0, true);
}