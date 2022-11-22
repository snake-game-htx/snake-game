boolean spawnNew = true;
boolean available = false;

void spawnFruit() {
  //if (spawnNew == true) { //skal ny frugt spawne?
  boolean availableHead = false;
  boolean availableTail = false;

  while (availableHead == false && availableTail == false) { //funktioner som giver frugten sine koordinater kører indtil begge koordinater er ledige

    fruitX = floor(random(cells)); //deklarerer frugtens X koordinat til at være et nedrundet tilfældigt tal fra antal cells - altså giver frugten en tilfældig celle på X aksen
    fruitY = floor(random(cells)); //deklarerer frugtens Y koordinat til at være et nedrundet tilfældigt tal fra antal cells - altså giver frugten en telfældig celle på Y aksen

    if (fruitX != headX && fruitY != headY) availableHead = true; //spawner frugten på slangens hoved?

    for (int i = 0; i < tailLength; i++) { //tjekker hver del af halens koordinater
      if (fruitX != tailX[i] && fruitY != tailY[i]) availableTail = true; //spawner frugten på en af slangens halers dele?
    }
  }

  spawnNew = false; //frugt har fået koordinater
}
