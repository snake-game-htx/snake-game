PImage webImg;

boolean GameOver = false;
int score = 0;
int movescore = 10;

void GameOver() {
  if (GameOver == true && MainMenu == false) {
    fill(255);
    strokeWeight(5);
    stroke(0);
    rect(width/2-100, height/2-100, 200, 200);
    textSize(35);
    fill(0);
    if(score == 10) {
      movescore = 20;
    }
    if(score == 100) {
      movescore = 30;
    }
    if(score == 1000) {
      movescore = 35;
    }
    text("Score:", width/2-45, height/2-50);
    text(score, width/2-movescore, height/2-10);
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
  }
}
