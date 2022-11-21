void mousePressed() {
  int x = mouseX;
  int y = mouseY;
  if (GameOver == true && MainMenu == false) {
    if ((x > width/2-25 && x < width/2+25) && (y > width/2+20 && y < width/2+70)) {
      GameOver = false;
      score = 0;
      headX = 0;
      headY = 0;
      left = false;
      right = false;
      up = false;
      down = false;
    }
    if ((x > width-100 && x < width-50) && (y > 50 && y < 100)) {
      exit();
    }
    if ((x > 40 && x < 110) && (y > 40 && y < 110)) {
      MainMenu = true;
      GameOver = false;
    }
  }
  if (MainMenu == true && GameOver == false) {
    if ((x > width/2-50 && x < width/2+50) && (y > height/2-50 && y < height/2)) {
      MainMenu = false;
      score = 0;
      headX = 0;
      headY = 0;
      left = false;
      right = false;
      up = false;
      down = false;
    }
  }
}
