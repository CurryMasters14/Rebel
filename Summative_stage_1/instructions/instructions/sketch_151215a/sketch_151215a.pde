PImage back;
PImage backA;
PImage Jump;
PImage Slide;
PImage Lose;
PFont mono;

void setup() {
  size(1000, 500);

  back = loadImage("title_page.jpg");
  back.resize(1000, 500);

  mono = loadFont("Chalkduster-48.vlw");

  backA = loadImage("arrow.png");
  backA.resize(120, 50);
  
  Jump = loadImage("Jump.png");
  
  Slide = loadImage("slide.png");
  
  Lose = loadImage("lose life.png");
}

void draw() {
  //draws the fade on the background
  strokeWeight(1);
  image(back, 0, 0);
  fill(#4C4C4D, 100);
  rect(-1, -1, 1002, 502);

  //draws text settings
  fill(255);
  textFont(mono, 90);
  text("INSTRUCTIONS", width/2-350, 90);

  // underlines instrucions
  stroke(255);
  strokeWeight(10);
  line(140, 102, 890, 102);

  //creates sound and music text
  fill(255);
  textSize(20);
  text("The goal of the game is to reach the end of the level without dying. You lose lives by", 10, 160);
  text("falling off the platform or hitting obstacles. To avoid obstacles, press either the UP", 10, 210);
  text("arrow to jump or the DOWN arrow to slide. Please note that you can stand on obsticals", 10, 260);
  text("but do not hit the sides!", 10, 310);
  
  //back button 
  noStroke();
  image(backA, 5, 5);
  fill(255,10);
  rect(5, 5, 120, 50,20);
  

//jump image
image(Jump,350,300);
fill(255,0,0);
text("Jump",375,290);

//slide image
image(Slide,525,300);
fill(255,0,0);
text("Slide",550,290);

// lose a life
image(Lose,700,300);
fill(255,0,0);
text("Lose life",700,290);

}