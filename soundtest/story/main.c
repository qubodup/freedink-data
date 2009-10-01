void main(void)
{
  //let's init all our globals

  // These globals are REQUIRED by dink.exe (it directly uses them, removing
  // any of these could result in a game crash.

  make_global_int("&exp",0);
  make_global_int("&strength", 3);
  make_global_int("&defense", 0);
  make_global_int("&cur_weapon", 0);
  make_global_int("&cur_magic", 0);
  make_global_int("&gold", 0);
  make_global_int("&magic", 0);
  make_global_int("&magic_level", 0);
  make_global_int("&vision", 0);
  make_global_int("&result", 0);
  make_global_int("&speed", 1);
  make_global_int("&timing", 0);
  make_global_int("&lifemax", 10); 
  make_global_int("&life", 10);
  make_global_int("&level", 1);
  make_global_int("&player_map", 1);
  make_global_int("&last_text", 0);
  make_global_int("&update_status", 0);
  make_global_int("&missile_target", 0);
  make_global_int("&enemy_sprite", 0);
  make_global_int("&magic_cost", 0);
  make_global_int("&missle_source", 0);

  //crap needed for misc
  set_dink_speed(3);
  sp_frame_delay(1,0);

  debug("Dink started. Time to fight for your right to party.");
  kill_this_task();
}
