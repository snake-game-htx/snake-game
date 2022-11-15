int cells = 10; // grid = cells * cells
int headX = 4, headY = 3;
int[] tailX = new int[] {4, 4, 5}, tailY = new int[] {4, 5, 5};
int[] fruitX = new int[] {0, 3, 5}, fruitY = new int[] {3, 4, 8};

PImage Fruit;
PImage Snake;
PImage Tail;

void setup() {
  size(1000,1000);
  Fruit = loadImage("Frugt.png");
  Snake = loadImage("Snake.png");
  Tail = loadImage("Tail.png");
  background(0,200,20);
}
//jonas
void draw() {
  image(Snake, headX * width / cells, headY * height / cells, width / cells, height / cells);
  for(int fruit = 0; fruit < fruitY.length; fruit++){
    image(Fruit, fruitX [fruit] * width / cells, fruitY [fruit] * height / cells, width / cells, height / cells);
  }
  fill(225, 245, 5);
  for(int tail = 0; tail < tailY.length; tail++){
     rect(tailX [tail] * width / cells, tailY [tail] * height / cells, width / cells, height / cells);

  background(0, 200, 20);
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
