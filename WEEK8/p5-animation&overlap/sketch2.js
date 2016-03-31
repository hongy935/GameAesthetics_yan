// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

var backgroundbox2;
var music_recorder1;
var recorder1;
var music_recorder2;
var recorder2;
var GRAVITY = 10;
var mySprite;
var newSprite;
var roof;
var hole;
var thekey;
var toymouse;

function setup() {
  createCanvas(1024,768);
  backgroundbox2 = loadImage("images/music_room.png"); 
  music_roof = loadImage("images/roof.png");
  roof = createSprite(width/2,23);
  roof.addImage(music_roof);
  music_hole = loadImage("images/hole.png");
  hole = createSprite(250,63);
  hole.addImage(music_hole);
  music_recorder1 = loadImage("images/recorder1.png");
  recorder1 = createSprite(710, 440);
  recorder1.addImage(music_recorder1);
  music_recorder2 = loadImage("images/recorder2.png");
  recorder2 = createSprite(700, 440);
  recorder2.addImage(music_recorder2);
  akey = loadImage("images/thekey.png");

  

}

function draw() {
background(255,255,255); 
image(backgroundbox2, 0, 0, backgroundbox2.width/2, backgroundbox2.height/2);
drawSprite(hole);
drawSprite(recorder2);
for(var i=4; i<allSprites.length; i++)
    {
      mySprite = allSprites[i];
      mySprite.velocity.x = -3;
      mySprite.velocity.y -= 0.05;
          if(mySprite.overlap(roof)){
      mySprite.remove();}
      
      if(mySprite.position.x < 200)
      {mySprite.velocity.x=0;}
     
          if(mySprite.position.y > height - 120)
      {mySprite.velocity.y=0;}
 }

drawSprites();
drawSprite(recorder1);
 	hole.onMousePressed = function(){
 	 if(i>4){
thekey = createSprite(200,60);
  thekey.addImage(akey);
  drawSprite(thekey);
  thekey.velocity.y += GRAVITY;}

  }
  
drawSprite(roof);

recorder1.onMousePressed = function() {
    newSprite = createSprite(600, random(310,410));
    newSprite.addAnimation("normal", "images/note1.png", "images/note6.png");

newSprite.animation.stop();
var f = round(random(0, newSprite.animation.getLastFrame()));
newSprite.animation.changeFrame(f);
}
 
}
