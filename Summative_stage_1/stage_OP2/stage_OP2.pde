PImage backImg, Settings, PlayS;
PImage[] images = new PImage[5];
int frame=0, xSpeed = -3, xLoc = 0, bX = 0, bY = 450, bW = 300, bH= 200, life = 250;
int x=0, y=325;

void setup() {
  size(1000, 500);
  frameRate(17);
  backImg = loadImage("back.png");
  for ( int i = 0; i< images.length; i++ )
  {
    images[i] = loadImage( i + ".png" );   // make sure images "0.jpg" to "11.jpg" exist
    images[i].resize(125, 125);
  }

  //settings icon
  Settings = loadImage("settings.png");
  Settings.resize(40, 40);

  //play/pause icon
  PlayS = loadImage("Play.png");
  PlayS.resize(40, 40);
}

void draw() {
  xLoc=xLoc+xSpeed;
  image(backImg, xLoc, 0);

  if (xLoc<-3995) {
    xSpeed=0;
  }

  x+=10;
  image(images[frame], x, y);
  frame++;
  if (frame > 4) frame = 0;
  //println(mouseX, mouseY);

  //top bar
  noStroke();
  fill(0, 0, 0, 127);
  rect(-1, 0, 1420, 70);

  //draws the ground
  fill(#6C6969);
  rect(0, 450, 1400, 200);

  // 1st obstical 
  fill(255, 0, 0);
  rect(500, 250, 100, 100);

  //2nd obstical
  fill(255, 0, 0);
  rect(200, 400, 100, 50);

  //adds the black outline around the life bar 
  fill(0);
  rect(98.5, 15.5, 253, 38);

  //creates the colour in the back
  fill(#074B76);
  rect(100, 17, 250, 35);

  //applys a shade layer
  fill(0, 100);
  rect(100, 17, 250, 35);

  //shows the amout of lifes
  fill(#000AFC);
  rect(100, 17, life, 35);

  if (life < 10) {
    life = 10;
  }

  fill(#18B8D6);
  textSize(25);
  text("Lives: ", 20, 43);

  //settings
  fill(#18B8D6);
  ellipse(950, 35, 50, 50);
  image(Settings, 930, 15);

  //play
  fill(#18B8D6);
  ellipse(890, 35, 50, 50);
  image(PlayS, 870, 15);

  //score
  fill(#18B8D6);
  textSize(25);
  text("SCORE:", 450, 43);
}