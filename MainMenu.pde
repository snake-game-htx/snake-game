boolean MainMenu = true;
int High_score = 0;

void MainMenu() {
  if (MainMenu == true && GameOver == false) {
    textAlign(LEFT);
    textSize(100);
    text("Snake", width/2-125, 150);
    fill(0);
    textSize(50);
    text("Play", width/2-50, height/2);
    textAlign(CENTER);
    text(High_score, width-60, height-50);
    if (score > High_score) High_score = score;
  }
}
