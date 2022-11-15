PImage webImg;

boolean GameOver = false;
int score = 0;

void GameOver() {
  if (GameOver == true && MainMenu == false) {
    fill(255);
    strokeWeight(5);
    stroke(0);
    rect(width/2-100, height/2-100, 200, 200);
    textSize(35);
    fill(0);
    text("Score:", width/2, height/2-50);
    textAlign(CENTER);
    text(score, width/2, height/2-10);
    stroke(0);
    rect(width-110, 40, 70, 70);
    stroke(255, 0, 0);
    strokeWeight(15);
    line(width-50, 50, width-100, 100);
    line(width-100, 50, width-50, 100);
    image(webImg, width/2-25, height/2+20, 50, 50);
    stroke(0);
    rect(40, 40, 70, 70);
    stroke(255);
    strokeWeight(5);
    line(75, 50, 45, 80);
    line(75, 50, 105, 80);
    line(55, 100, 55, 75);
    line(95, 100, 95, 75);
    line(55, 100, 95, 100);
    textAlign(CENTER);
    textSize(25);
    text("High score:", width-60, height-80);
    text(High_score, width-60, height-50);
    if (score > High_score) High_score = score;
  }
  if (GameOver == false && MainMenu == false) {
    if (headX < 0 || headX >= cells) {
      GameOver = true;
    }
    if (headY < 0 || headY >= cells) {
      GameOver = true;
    }
  }
}
