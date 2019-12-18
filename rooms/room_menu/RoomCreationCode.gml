global.up_key = ord("W");
global.down_key = ord("S");
global.left_key = ord("A");
global.right_key = ord("D");
global.shoot_key = vk_rshift;

audio_stop_all();
audio_play_sound(snd_menu_loop, 10, true);

destroy_all_instances(obj_enemy_spawner);
destroy_all_instances(obj_hud);
destroy_all_instances(obj_missile);
destroy_all_instances(obj_enemy_pink_bullet);
destroy_all_instances(obj_alien_scout);
destroy_all_instances(obj_alien_fighter);
destroy_all_instances(obj_alien_destroyer);