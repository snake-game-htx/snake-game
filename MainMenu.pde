boolean MainMenu = true;

void MainMenu() {
  if (MainMenu == true && GameOver == false) {
    textSize(100);
    text("Snake", width/2-125, 150);
    fill(0);
    textSize(50);
    text("Play", width/2-50, height/2);
  }
}
