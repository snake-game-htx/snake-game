boolean right = false;
boolean left = false;
boolean up = false;
boolean down = false;

void keyPressed() {
  if ((key == 'w'|| key == 'W') && down == false) {
    up = true;
    left = false;
    down = false;
    right = false;
  }
  if ((key == 'a' || key == 'A') && right == false) {
    left = true;
    right = false;
    down = false;
    up = false;
  }
  if ((key == 's' || key == 'S') && up == false) {
    down = true;
    up = false;
    right = false;
    left = false;
  }
  if ((key == 'd' || key == 'D') && left == false) {
    right = true;
    up = false;
    down = false;
    left = false;
  }
  if (key == CODED) {

    if (keyCode == UP && down == false) {
      up = true;
      left = false;
      down = false;
      right = false;
    }
    if (keyCode == DOWN && up == false) {
      down = true;
      up = false;
      right = false;
      left = false;
    }
    if (keyCode == RIGHT && left == false) {
      right = true;
      up = false;
      down = false;
      left = false;
    }
    if (keyCode == LEFT && right == false) {
      left = true;
      right = false;
      down = false;
      up = false;
    }
  }
}
