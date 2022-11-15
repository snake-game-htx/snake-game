int cells = 10; // grid = cells * cells
int headX, headY;
int[] tailX, tailY;
int[] fruitX, fruitY;

void setup() {
  size(800, 800);
  String url = "https://static.thenounproject.com/png/61681-200.png";
  webImg = loadImage(url, "png");
}

void draw() {
  background(0, 200, 20);
  MainMenu();
  GameOver();
}

void keyPressed() {
  if (MainMenu == false) {
    if (key == 'h') GameOver = true;
    if (key == '+') score++;
  }
}

void draw(){
  
}
