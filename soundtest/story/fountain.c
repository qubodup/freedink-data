void talk(void)
{
  &life = &lifemax;
  say_xy("high2.wav/22050Hz - status bar appearing; healing", 0, 380);
  playsound(22, 22050, 0,0,0);
  spawn("mag-star");
}
