int movetimer;

void Movesnake(){
  if((movetimer>=25) && (right == true)){
    headX++;
    movetimer=0;
  }
  if((movetimer>=25) && (down == true)){
    headY++;
    movetimer=0;
  }
  if((movetimer>=25) && (up == true)){
    headY--;
    movetimer=0;
  }
  if((movetimer>=25) && (left == true)){
    headX--;
    movetimer=0;
  }
}
