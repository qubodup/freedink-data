void main(void)
{
  debug("Loading sounds..");
  // OK (duck)
  load_sound("QUACK.WAV", 1);
  // ??
  load_sound("PIG1.WAV", 2);
  load_sound("PIG2.WAV", 3);
  load_sound("PIG3.WAV", 4);
  load_sound("PIG4.WAV", 5);
  // ???
  load_sound("BURN.WAV", 6);
  // ??
  load_sound("OPEN.WAV", 7);
  // ??
  load_sound("SWING.WAV", 8);
  // ??
  load_sound("PUNCH.WAV", 9);
  // ??
  load_sound("SWORD2.WAV", 10);
  // OK (menu ??)
  load_sound("SELECT.WAV", 11);
  // OK (little girl)
  load_sound("WSCREAM.WAV", 12);
  load_sound("PICKER.WAV", 13);
  load_sound("GOLD.WAV", 14);
  load_sound("GRUNT1.WAV", 15);
  load_sound("GRUNT2.WAV", 16);
  load_sound("SEL1.WAV", 17);
  // OK (escape button)
  load_sound("ESCAPE.WAV", 18);
  load_sound("NONO.WAV", 19);
  load_sound("SEL2.WAV", 20);
  load_sound("SEL3.WAV", 21);
  // OK (status bar appearing, healing)
  load_sound("HIGH2.WAV", 22);
  // OK (fireplace)
  load_sound("FIRE.WAV", 23);
  load_sound("SPELL1.WAV", 24);
  load_sound("CAVEENT.WAV", 25);
  load_sound("SNARL1.WAV", 26);
  load_sound("SNARL2.WAV", 27);
  load_sound("SNARL3.WAV", 28);
  load_sound("HURT1.WAV", 29);
  load_sound("HURT2.WAV", 30);
  load_sound("ATTACK1.WAV", 31);
  load_sound("CAVEENT.WAV", 32);
  // OK (level up)
  load_sound("LEVEL.WAV", 33);
  // OK (save machine)
  load_sound("SAVE.WAV", 34);
  load_sound("SPLASH.WAV", 35);
  load_sound("SWORD1.WAV", 36);
  // OK (barrel)
  load_sound("BHIT.WAV", 37);
  load_sound("SQUISH.WAV", 38);
  load_sound("STAIRS.WAV", 39);
  load_sound("STEPS.WAV", 40);
  load_sound("ARROW.WAV", 41);
  load_sound("FLYBY.WAV", 42);
  load_sound("SECRET.WAV", 43);
  load_sound("BOW1.WAV", 44);
  load_sound("KNOCK.WAV", 45);
  load_sound("DRAG1.WAV", 46);
  load_sound("DRAG2.WAV", 47);
  load_sound("AXE.WAV", 48);
  load_sound("BIRD1.WAV", 49);

  // Mouse mode
  int &crap;
  fill_screen(0);
  sp_seq(1, 0);
  sp_brain(1, 13);
  sp_pseq(1,10);
  sp_pframe(1,8);
  sp_que(1,20000);
  sp_noclip(1, 1);

  //say_stop_xy("Hello, world!", 0, 40);
  // Do intro screen here

  // Now start the game
  sp_que(1, 0);
  sp_noclip(1, 0);
  sp_x(1, 300);
  sp_y(1, 200);
  sp_base_walk(1, 70);
  sp_base_attack(1, 100);
  sp_base_idle(1, 10);
  sp_brain(1, 1);
  reset_timer();
  &player_map = 400;
  // back to the engine as mode is set to 1 after launching start.c
  wait(0);
  // now we can set mode to 2
  set_mode(2); //turn game on

  //lets give him all weapons
  add_item("item-fst", 438, 1);
  add_item("item-sw1", 438, 7);
  add_item("item-sw2", 438, 20);
  add_item("item-sw3", 438, 21);
  add_item("item-axe", 438, 6);
  add_item("item-b1", 438, 8);
  add_item("item-b2", 438, 12);
  add_item("item-b3", 438, 13);
  add_item("item-bom", 438, 3);
  add_item("item-bom", 438, 3);
  // and all magics
  add_magic("item-fb", 437, 1);
  add_magic("item-sfb" ,437, 2);
  add_magic("item-ice", 437, 5);

  &strength = 101;
  &defense = 101;
  &magic = 101;

  &cur_weapon = 1;
  arm_weapon();

  &cur_magic = 1;
  arm_magic();

  &update_status = 1;
  draw_status();

  kill_this_task();
}
