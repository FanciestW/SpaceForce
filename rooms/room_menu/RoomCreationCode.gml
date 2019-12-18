global.up_key = ord("W");
global.down_key = ord("S");
global.left_key = ord("A");
global.right_key = ord("D");
global.shoot_key = vk_rshift;

audio_stop_all();
audio_play_sound(snd_menu_loop, 10, true);