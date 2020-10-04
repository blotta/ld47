/// @description Die instantly
audio_play_sound(snd_explosion, 5, false);

state = PlayerState.EXPLODED;
speed = 0;
visible = false;

// start sequence
var seq = layer_sequence_create(layer, x, y, ExplodeSequence);
layer_sequence_play(seq);

instance_destroy();