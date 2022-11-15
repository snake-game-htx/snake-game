int cells = 10; // grid = cells * cells
int headX, headY;
int[] tailX, tailY;
int[] fruitX, fruitY;

PImage Fruit;
PImage Snake;
PImage Tail;

void setup() {
  size(800, 800);
  String url = "https://static.thenounproject.com/png/61681-200.png";
  webImg = loadImage(url, "png");
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
  }
  background(0, 200, 20);
  MainMenu();
  GameOver();
  frameRate(1000);
  println(frameRate);
}
