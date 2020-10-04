/// @description Die instantly
state = PlayerState.EXPLODED;
speed = 0;
visible = false;

// start sequence
var seq = layer_sequence_create(layer, x, y, ExplodeSequence);
layer_sequence_play(seq);

instance_destroy();