PImage webImg;

boolean GameOver = false;
int score = 0;

void GameOver() {
  if (GameOver == true) {
    fill(255);
    strokeWeight(5);
    rect(width/2-100, height/2-100, 200, 200);
    textSize(35);
    fill(0);
    text("Score:", width/2-45, height/2-50);
    text(score, width/2-10, height/2-10);
    rect(width-110, 40, 70, 70);
    stroke(255, 0, 0);
    strokeWeight(15);
    line(width-50, 50, width-100, 100);
    line(width-100, 50, width-50, 100);
    image(webImg, width/2-25, height/2+20, 50, 50);
    stroke(0);
  }
}

void mousePressed() {
  int x = mouseX;
  int y = mouseY;
  if (GameOver == true) {
    if ((x > width/2-25 && x < width/2+25) && (y > width/2+20 && y < width/2+70)) {
      GameOver = false;
    }
    if ((x > width-100 && x < width-50) && (y > 50 && y < 100)) {
      exit();
    }
  }
}
