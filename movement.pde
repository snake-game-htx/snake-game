int movetimer;   //definere movetimer

void Movesnake() {
  println(headX + "x, "+ fruitX);
  println(headY + "y, "+ fruitY);
  if ((movetimer>=25) && (right == true)) { //vi siger hvor og hvornår hoved må bevæge sig
    movetimer=0;
    for (int i = 1; i < tailLength; i++) {
      tailX[tailLength - i] = tailX[tailLength - i - 1];
      tailY[tailLength - i] = tailY[tailLength - i - 1];
    }

    tailX[0] = headX;
    tailY[0] = headY;

    headX++;
    if (headX == fruitX && headY == fruitY) {
      spawnNew = true;
      spawnFruit();
      Tail();
    }
    for (int i = 0; i < tailLength; i++) {
      if (headX == tailX [i] && headY == tailY [i]) GameOver = true;
    }
  }
  if ((movetimer>=25) && (down == true)) { //vi siger hvor og hvornår hoved må bevæge sig
    for (int i = 1; i < tailLength; i++) {
      tailX[tailLength - i] = tailX[tailLength - i - 1];
      tailY[tailLength - i] = tailY[tailLength - i - 1];
    }
    tailX[0] = headX;
    tailY[0] = headY;
    headY++;
    movetimer=0;
    if (headX == fruitX && headY == fruitY) {
      spawnNew = true;
      spawnFruit();
      Tail();
    }
    for (int i = 0; i < tailLength; i++) {
      if (headX == tailX [i] && headY == tailY [i]) GameOver = true;
    }
  }
  if ((movetimer>=25) && (up == true)) { //vi siger hvor og hvornår hoved må bevæge sig
    for (int i = 1; i < tailLength; i++) {
      tailX[tailLength - i] = tailX[tailLength - i - 1];
      tailY[tailLength - i] = tailY[tailLength - i - 1];
    }
    tailX[0] = headX;
    tailY[0] = headY;
    headY--;
    movetimer=0;
    if (headX == fruitX && headY == fruitY) {
      spawnNew = true;
      spawnFruit();
      Tail();
    }
    for (int i = 0; i < tailLength; i++) {
      if (headX == tailX [i] && headY == tailY [i]) GameOver = true;
    }
  }
  if ((movetimer>=25) && (left == true)) { //vi siger hvor og hvornår hoved må bevæge sig
    for (int i = 1; i < tailLength; i++) {
      tailX[tailLength - i] = tailX[tailLength - i - 1];
      tailY[tailLength - i] = tailY[tailLength - i - 1];
    }
    tailX[0] = headX;
    tailY[0] = headY;
    headX--;
    movetimer=0;
    if (headX == fruitX && headY == fruitY) {
      spawnNew = true;
      spawnFruit();
      Tail();
    }
    for (int i = 0; i < tailLength; i++) {
      if (headX == tailX [i] && headY == tailY [i]) GameOver = true;
    }
  }
}
