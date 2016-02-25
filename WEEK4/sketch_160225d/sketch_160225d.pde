Walker walker;
float x2=40;
float y2=40;
  
void setup() {
  size(400,400);
  background(0);
  smooth();
  walker = new Walker();

}

void draw() {
  fill(0,10);
  rect(0,0,width,height);
  
  walker.update();
  walker.draw();
  
  fill(0,255,255);
  text("☺", x2, y2);
  

}

class Walker {
  int x1;
  int y1;
  int numMoves = 0;
  int MAXMOVES = 200;

  Walker() {
    x1 = width/2;
    y1 = height/2;
  }

  void update() {
    if (numMoves < MAXMOVES) {
      int r = floor(random(4));
      if (r == 0) {
        y1-=10;
      } else if (r == 1) {
        x1+=10;
      } else if (r == 2) {
        y1+=10;
      } else if (r == 3) {
        x1-=10;
      }
      numMoves++;
    }
  }

  void draw() {
    fill(255,0,0);
    text("✿", x1, y1);
  }
}

void keyPressed() {

  if (key == CODED) {
    if (keyCode == UP) {
      y2 -=10;
    }
  }
  if (key == CODED) {
    if (keyCode == DOWN) {
      y2 +=10;
    }
  }
  if (key == CODED) {
    if (keyCode == RIGHT) {
      x2 +=10;
    }
  }
  if (key == CODED) {
    if (keyCode == LEFT) {
      x2 -=10;
    }
  }
}