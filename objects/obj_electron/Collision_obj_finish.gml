/// @description Finished level
audio_play_sound(snd_finish, 5, false);

state = PlayerState.FINISHED;
speed = 0;
visible = false;

// start sequence
var seq = layer_sequence_create(layer, x, y, FinishedSequence);
layer_sequence_play(seq);

instance_destroy();