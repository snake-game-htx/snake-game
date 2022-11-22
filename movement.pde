int movetimer;   //definere movetimer

void Movesnake(){
  if((movetimer>=25) && (right == true)){ //vi siger hvor og hvornår hoved må bevæge sig
    headX++;
    movetimer=0;
  }
  if((movetimer>=25) && (down == true)){ //vi siger hvor og hvornår hoved må bevæge sig
    headY++;
    movetimer=0;
  }
  if((movetimer>=25) && (up == true)){ //vi siger hvor og hvornår hoved må bevæge sig
    headY--;
    movetimer=0;
  }
  if((movetimer>=25) && (left == true)){ //vi siger hvor og hvornår hoved må bevæge sig
    headX--;
    movetimer=0;
  }
}
