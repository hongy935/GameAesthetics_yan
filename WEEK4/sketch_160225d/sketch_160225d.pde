Walker walker;
int cellsize = 10;
char[][]grid;
float x2=40;
float y2=40;


void setup() {
  size(400, 400);
  background(0);
  grid =  = new char [width/cellsize][height/cellsize]
  for (int i=0; i<width/cellsize; i++) {
    for (int j=0; j<height/cellsize; j++) {
      grid[i][j] = '#';
    }
  }
  walker = new Walker();
  //float distance = dist(walker.x1, walker.y1, x2, y2);

  }

void draw() {
  //fill(0,10);
  //rect(0,0,width,height);

  walker.update();
  walker.draw();

  fill(0, 255, 255);
  text("☺", x2, y2);

  fill(255, 255, 255);
  for (int i=0; i<width/cellsize; i++) {
    for (int j=0; j<height/cellsize; j++) {
      text(grid[i][j], i*cellsize, j*cellsize );
    }
  }
}

class Walker {
  int x1;
  int y1;
  int numMoves = 0;
  int MAXMOVES = 200;

  Walker() {
    x1 = (width/cellsize)/2;
    y1 = (height/cellsize)/2;
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
    grid[x1][y1] = '.';
  }

  void draw() {
    fill(255, 0, 0);
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