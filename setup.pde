int cells = 10; // grid = cells * cells
<<<<<<< Updated upstream
int headX = 4, headY = 3;
int[] tailX = new int[] {4, 4, 5}, tailY = new int[] {4, 5, 5};
int[] fruitX = new int[] {0, 3, 5}, fruitY = new int[] {3, 4, 8};
=======
int headX, headY;
int[] tailX, tailY;
int fruitX, fruitY;
int tailLength;
>>>>>>> Stashed changes

PImage Fruit;
PImage Snake;
PImage Tail;

void setup() {
  size(1000,1000);
  Fruit = loadImage("Frugt.png");
  Snake = loadImage("Snake.png");
<<<<<<< Updated upstream
  Tail = loadImage("Tail.png");
  background(0,200,20);
=======
  spawnFruit();
  tailX = new int[cells * cells];
  tailY = new int[cells * cells];
  tailLength = 0;
>>>>>>> Stashed changes
}
//jonas
void draw() {
  image(Snake, headX * width / cells, headY * height / cells, width / cells, height / cells);
  for(int fruit = 0; fruit < fruitY.length; fruit++){
    image(Fruit, fruitX [fruit] * width / cells, fruitY [fruit] * height / cells, width / cells, height / cells);
  }
  fill(225, 245, 5);
<<<<<<< Updated upstream
  for(int tail = 0; tail < tailY.length; tail++){
     rect(tailX [tail] * width / cells, tailY [tail] * height / cells, width / cells, height / cells);

  background(0, 200, 20);
=======
  for(int tail = 0; tail < tailLength; tail++){
     rect(tailX [tail] * width / cells, tailY [tail] * height / cells, width / cells, height / cells);
  }
  
>>>>>>> Stashed changes
  MainMenu();
  GameOver();
  frameRate(1000);
  println(frameRate);
}

void keyPressed() {
  if (MainMenu == false) {
    if (key == 'h') GameOver = true;
    if (key == '+') score++;

  }
}
