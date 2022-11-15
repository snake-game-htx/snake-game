boolean spawnNew = true;
boolean availableHead = false;
boolean availableTail = false;
boolean available = false;

void spawnFruit() {
  if (spawnNew == true) { //skal ny frugt spawne?

    while (availableHead == false && availableTail == false) { //funktioner som giver frugten sine koordinater kører indtil begge koordinater er ledige

      fruitX = floor(random(nFruitX.length)); //deklarerer frugtens X koordinat til at være et nedrundet tilfældigt tal fra antal cells - altså giver frugten en tilfældig celle på X aksen

      println(fruitX); //angiv frugtens X værdi i console

      fruitY = floor(random(nFruitY.length)); //deklarerer frugtens Y koordinat til at være et nedrundet tilfældigt tal fra antal cells - altså giver frugten en telfældig celle på Y aksen

      println(fruitY); //angiv frugtens Y værdi i console

      if (fruitX != headX && fruitY != headY) availableHead = true; //spawner frugten på slangens hoved?
      /*
      for (int i = 0; i < tailX.length; i++) { //tjekker hver del af halens koordinater
        if (fruitX != tailX[i] && fruitY != tailY[i]) availableTail = true; //spawner frugten på en af slangens halers dele?
      }*/
    }

    spawnNew = false; //frugt har fået koordinater
  }
}