PImage backImg;
PImage[] images = new PImage[5];
int frame=0;

void setup() {
  size(1000, 500);

  backImg = loadImage("back.png");
  backImg.resize(1000, 500);
  
  frameRate(17);
  for ( int i = 0; i< images.length; i++ )
  {
    images[i] = loadImage( i + ".png" );   // make sure images "0.jpg" to "11.jpg" exist
  }
}

void draw() {
  image(backImg, 0, 0);
  
  image(images[frame] ,0, 242);
  frame++;
  if (frame > 4) frame = 0;

  println(mouseX, mouseY);

  //top bar
  noStroke();
  fill(0, 0, 0, 127);
  rect(-1, 0, 1420, 70);

  //draws the ground
  fill(#6C6969);
  rect(0, 450, 1400, 200);

  // 1st obstical 
  fill(255, 0, 0);
  rect(150, 400, 100, 50);

  //2nd obstical
  fill(255, 0, 0);
  rect(320, 350, 100, 100);

//3rd obstical
fill(255,0,0);
rect(500,250,100,200);

fill(255,0,0);
//ellipse(
}