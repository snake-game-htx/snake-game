boolean spawnNew = true;
boolean available = false;
float[] nFruitX = new float[cells], nFruitY = new float[cells];
float fruitX, fruitY;

void spawnFruit() {
<<<<<<< Updated upstream
  if (spawnNew == true) { //skal ny frugt spawne?
    for (int i = 0; i < cells; i++) { //angiver hvilke mulige X koordinater frugten skal kunne få
      nFruitX[i] = i;
    }
    for (int i = 0; i < cells; i++) { //angiver hvilke mulige Y koordinater frugten skal kunne få
      nFruitY[i] = i;
    }
=======
  //if (spawnNew == true) { //skal ny frugt spawne?
boolean availableHead = false;
boolean availableTail = false;
>>>>>>> Stashed changes

    while (availableHead == false && availableTail == false) { //funktioner som giver frugten sine koordinater kører indtil begge koordinater er ledige

      fruitX = nFruitX[floor(random(nFruitX.length))]; //deklarerer frugtens X koordinat til at være et nedrundet tilfældigt tal fra antal cells - altså giver frugten en tilfældig celle på X aksen

      println(fruitX); //angiv frugtens X værdi i console

      fruitY = nFruitX[floor(random(nFruitY.length))]; //deklarerer frugtens Y koordinat til at være et nedrundet tilfældigt tal fra antal cells - altså giver frugten en telfældig celle på Y aksen

      println(fruitY); //angiv frugtens Y værdi i console

      if (fruitX != headX && fruitY != headY) availableHead = true; //spawner frugten på slangens hoved?
<<<<<<< Updated upstream
      for (int i = 0; i < tailX.length; i++) { //tjekker hver del af halens koordinater
=======
      
      for (int i = 0; i < tailLength; i++) { //tjekker hver del af halens koordinater
>>>>>>> Stashed changes
        if (fruitX != tailX[i] && fruitY != tailY[i]) availableTail = true; //spawner frugten på en af slangens halers dele?
      }
    }

    spawnNew = false; //frugt har fået koordinater
  //}
}
