void talk(void)
{
  say("A barrel", 1);
}

void hit(void)
{
  say_xy("bhit.wav/22050Hz - barrel hit", 0, 380);
  playsound(37, 22050, 0,0,0);
  sp_seq(&current_sprite, 173);
  wait(800);
  sp_pframe(&current_sprite, 1);
}
