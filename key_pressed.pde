
//lavet af Silas Åkerlind


//Booleansne for hver retning bliver difineret

//lavet af Silas Åkerlind 


//Booleansne for hver retning bliver difineret

boolean right = false;
boolean left = false;
boolean up = false;
boolean down = false;

void keyPressed() {  
  //work pls
  if (MainMenu == false) {
    if ((key == 'w'|| key == 'W') && down == false) { // Vi sætter difinitionerene for hvornår up bliver true
      up = true;
      left = false;
      down = false;
      right = false;
      movetimer = 22222;
    }
    if ((key == 'a' || key == 'A') && right == false) { // Vi sætter difinitionerene for hvornår left bliver true
      left = true;
      right = false;
      down = false;
      up = false;
      movetimer = 22222;
    }
    if ((key == 's' || key == 'S') && up == false) { // Vi sætter difinitionerene for hvornår down bliver true
      down = true;
      up = false;
      right = false;
      left = false;
      movetimer = 22222;
    }
    if ((key == 'd' || key == 'D') && left == false) { // Vi sætter difinitionerene for hvornår right bliver true
      right = true;
      up = false;
      down = false;
      left = false;
      movetimer = 22222;
    }
    if (keyCode == LEFT && right == false) {
      left = true;
      right = false;
      down = false;
      up = false;
    if (key == CODED) { //Her bliver der gjort det samme som inden bare vi er nødt til at code tasterne
      if (keyCode == UP && down == false) {  // Vi sætter difinitionerene for hvornår up bliver true
        up = true;
        left = false;
        down = false;
        right = false;
        movetimer = 22222;
      }
      if (keyCode == DOWN && up == false) {  // Vi sætter difinitionerene for hvornår down bliver true
        down = true;
        up = false;
        right = false;
        left = false;
        movetimer = 22222;
      }
      if (keyCode == RIGHT && left == false) {  // Vi sætter difinitionerene for hvornår right bliver true
        right = true;
        up = false;
        down = false;
        left = false;
        movetimer = 22222;
      }
      if (keyCode == LEFT && right == false) {  // Vi sætter difinitionerene for hvornår left bliver true
        left = true;
        right = false;
        down = false;
        up = false;
        movetimer = 22222;
      }
    }
  }
}
