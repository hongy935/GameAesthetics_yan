int maxImages = 8;
PImage[] dance = new PImage[maxImages];
int imageIndex = 0;


void setup() {
  size(600,600);
  frameRate(8);
  for (int i=0; i<maxImages; i++) {
  dance[i] = loadImage("p" + i + ".jpg");
  }  
}

void draw() {
  background(255);
  imageMode(CENTER);
  translate(width/2, height/2);
  imageIndex = (imageIndex + 1) % maxImages;
  image(dance[imageIndex], 0, 0); 
  } 
 
