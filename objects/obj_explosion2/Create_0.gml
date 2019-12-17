randomize();
creator = noone;
explosions = [snd_random_explosion1, snd_random_explosion2]
random_num = irandom(array_length_1d(explosions)-1);
audio_play_sound(explosions[random_num], 10, false);