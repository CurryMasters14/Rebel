PImage back;
PImage backA;
PImage Jump;
PImage Slide;
PImage Lose;
int x, x2, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, y, y2, y3, y4, y5, y6;
float x3;
PFont mono;
boolean setting=false;
boolean instructions=false;
void setup() {
  size(1000, 500);
  back = loadImage("title.png");
  back.resize(1000, 500);
  x=width/2-200;
  x2=width/2-76;
  x3=width/2-101.5;
  x4=width/2-180;
  x5=width/2-250;
  x6=100;

  y=height/2;
  y2=height/2+70;
  y3=height/2+140;
  y4=90;
  y5=220;
  y6=400;
}


void draw() {
  if ((setting==false) & (instructions==false)) {
  back = loadImage("title.png");
  back.resize(1000, 500);
  x=width/2-200;
  x2=width/2-76;
  x3=width/2-101.5;
  x4=width/2-180;
  x5=width/2-250;
  x6=100;

  y=height/2;
  y2=height/2+70;
  y3=height/2+140;
  y4=90;
  y5=220;
  y6=400;

  image(back, 0, 0);

  // start button
  noStroke();
  fill(0, 0, 255, 127);
  rect(x, y, 400, 50);

  fill(255);
  textSize(50);
  text("START", x2, height/2+44);

  // settings button
  fill(0, 0, 255, 127);
  rect(x, y2, 400, 50);

  fill(255);
  textSize(50);
  text("SETTINGS", x3, height/2+114);

  //instructions button
  fill(0, 0, 255, 127);
  rect(x, y3, 400, 50);

  fill(255);
  textSize(50);
  text("INSTRUCTIONS", x4, height/2+183);
  }
  settingsButton();
  instructionsButton();
  backButton();
}

void settingsButton() {
  if ((mousePressed) & (mouseX>x) & (mouseX<x+400) & (mouseY>y2) & (mouseY<y2+50)) {
    setting=true;
  }
  if (setting==true) { 
    x=5000;
    x2=5000;
    x3=5000;
    x4=5000;
    x5=width/2-250;
    x6=100;
    x7=250;
    x11=5;
    y4=90;
    y5=220;
    y6=400;
    back = loadImage("title_page.jpg");
    back.resize(1000, 500);

    mono = loadFont("Chalkduster-48.vlw");

    backA = loadImage("arrow.png");
    backA.resize(120, 50);
    //draws the fade on the background
    strokeWeight(1);
    image(back, 0, 0);
    fill(#4C4C4D, 100);
    rect(-1, -1, 1002, 502);

    //draws text settings
    fill(255);
    textFont(mono, 90);
    text("SETTINGS", x5, y4);

    // underlines settings
    stroke(255);
    strokeWeight(10);
    line(x7, 102, 760, 102);

    //creates sound and music text
    fill(255);
    textSize(50);
    text("Music :", x6, y5);
    text("Sound :", x6, y6);

    //back button 
    noStroke();
    image(backA, 5, 5);
    fill(255, 10);
    rect(x11, 5, 120, 50, 20);
  }
}
void instructionsButton() {
  if ((mousePressed) & (mouseX>x) & (mouseX<x+400) & (mouseY>y3) & (mouseY<y3+50)) {
    instructions=true;
  }
  if (instructions==true) {
    x=5000;
    x2=5000;
    x3=5000;
    x4=5000;
    x8=width/2-350;
    x9=140;
    x10=10;
    x11=5;
    x12=375;
    x13=550;
    x14=700;


    back = loadImage("title_page.jpg");
    back.resize(1000, 500);

    mono = loadFont("Chalkduster-48.vlw");

    backA = loadImage("arrow.png");
    backA.resize(120, 50);
//draws the fade on the background
    strokeWeight(1);
    image(back, 0, 0);
    fill(#4C4C4D, 100);
    rect(-1, -1, 1002, 502);
    Jump = loadImage("Jump.png");

    Slide = loadImage("slide.png");

    Lose = loadImage("lose life.png");

    //draws text settings
    fill(255);
    textFont(mono, 90);
    text("INSTRUCTIONS", x8, 90);

    // underlines instrucions
    stroke(255);
    strokeWeight(10);
    line(x9, 102, 890, 102);

    //creates sound and music text
    fill(255);
    textSize(20);
    text("The goal of the game is to reach the end of the level without dying. You lose lives by", x10, 160);
    text("falling off the platform or hitting obstacles. To avoid obstacles, press either the UP", x10, 210);
    text("arrow to jump or the DOWN arrow to slide. Please note that you can stand on obsticals", x10, 260);
    text("but do not hit the sides!", x10, 310);

    //back button 
    noStroke();
    image(backA, 5, 5);
    fill(255, 10);
    rect(x11, 5, 120, 50, 20);


    //jump image
    image(Jump, 350, 300);
    fill(255, 0, 0);
    text("Jump", x12, 290);

    //slide image
    image(Slide, 525, 300);
    fill(255, 0, 0);
    text("Slide", x13, 290);

    // lose a life
    image(Lose, 700, 300);
    fill(255, 0, 0);
    text("Lose life", x14, 290);
  }
}




void backButton() {
  if ((mousePressed) & (mouseX>x11) & (mouseX<x11+120) & (mouseY>5) & (mouseY<50) & (setting==true)) {
    setting=false;
    instructions=false;
  } else if ((mousePressed) & (mouseX>x11) & (mouseX<x11+120) & (mouseY>5) & (mouseY<50) & (instructions==true)) {
    instructions=false;
    setting=false;
  }
}

