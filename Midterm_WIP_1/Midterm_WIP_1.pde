// Mykhal Parson - "The Ollie"
//Press the mouse to change the background of the sketch,"level" the board to 
//complete the ollie, and raise the bridge
//move the mouse northeast/top right to add more squares
//Swipe right to see a preview/hint of where the skateboard will go
//Run the code again to get a new background color

String state = "StartScreen";

PImage img1;
PFont font;
PShape board;
PImage [] skate = new PImage [5]; //Five different skateboard PNGs
int randomPic = 0;


//random colors will be assigned
float r = random(250); 
float g = random(250); 
float b = random(250); 
float firstwheel = 515;

int rad = 20; //radius of skateboard wheels

void setup () {
    //size (width,height);
    size (1080, 720);
    
   //makes the skateboard into a shape
   board = createShape();
   board.beginShape();
   //second skateboard middle
   board.vertex(500,400);
   board.vertex(620,400);
   //new skateboard tail (left)
   board.vertex(485,385);
   board.vertex(500,400);
   //new skateboard tail (right)
   board.vertex(620,400);
   board.vertex(635, 385);
   board.endShape(CLOSE); 

  //PNG image loads
  img1 = loadImage("Thps2.png");
  
  skate[0] = loadImage ("skate1.png");
  skate[1] = loadImage ("skate2.png");
  skate[2] = loadImage ("skate3.png");
  skate[3] = loadImage ("skate4.png");
  skate[4] = loadImage ("skate5.png");
}


void draw() { 
 
   if(state=="StartScreen"){
     background (255,165,0);
     textSize(40);
     text("START", width-610, height/2);
   } else if (state=="Game"){
   
  //background color changes, board is leveled
  if (mousePressed) {

    background(r, g, b);
    
    //prints a skate picture on screen 
    image(skate[randomPic], width/3, height/3, 150,150);
    println (randomPic);
    
    //Higher Box: rect (x1, y1, width, height);
    fill(255);
    rect(0, 550, 450, 350);

    //Lower Box: rect (x1, y1, width, height);
    fill(0);
    rect(700, 620, 480, 200);

    //skateboard middle
    strokeWeight(3.25);
    line (500, 400, 620, 400);

    //new skateboard tail (left)
    line (485, 385, 500, 400);

    //new skateboard tail (right)
    line (620, 400, 635, 385);

    //wheel1 (right)
    //circle(x, y, radius)
    strokeWeight(2);
    fill(255, 0, 0);
    circle(605, 415, rad);

    //wheel2 (left)
    //circle(x, y, radius)
    strokeWeight(2);
    fill(255, 0, 0);
    circle(515, 415, rad);

    fill(0, 255, 0);
    //creates "bridge"
    for (float i = 515; i<730; i+=25) {
      //square(firstwheel, firstwheel-87, 25);
      square(i-50, firstwheel-87, 25);
   
    }
  } else {

    // MAIN SKATEBOARD
    background(0, 250, 0);

    //"score: 0"
    fill(0);
    textSize(25);
    text("Score: 0", 950, 24, 200, 200);

    if (mouseX > width/2 && mouseY < height/2) {
    background(b+15, g+15, r+15);
    //"score: 0"
    fill(0);
    textSize(25);
    text("Score: 0", 950, 24, 200, 200);
    shape(board, 300,25);
    }

    if (mouseX<width/2 && mouseY> height/2) {
    background(b-35, g-35, r-35);
    //"score: 0"
    fill(0);
    textSize(25);
    text("Score: 0", 950, 24, 200, 200);

    }

    //Higher Box: rect (x1, y1, width, height);
    fill(0);
    rect(0, 550, 450, 350);

    //Lower Box: rect (x1, y1, width, height);
    fill(255);
    rect(700, 620, 480, 200);

    //creates original skateboard
    makeSkateboard();

    fill(255, 0, 0);
    //creates "bridge"
    for (float i = 515; i<750; i+=25) {
      //square(firstwheel, firstwheel-87, 25);
      square(i-65, firstwheel+105, 25);
    }
  }

  if (mousePressed && mouseX>width/2) {

    background(255);

    //Higher Box: rect (x1, y1, width, height);
    fill(255);
    rect(0, 550, 450, 350);

    //Lower Box: rect (x1, y1, width, height);
    fill(0);
    rect(700, 620, 480, 200);

    newSkateboard();

    fill(0, 255, 0);
    //creates "bridge"
    }
    
    if (mousePressed && mouseX>width-394) {

    background(255);

    //Higher Box: rect (x1, y1, width, height);
    fill(255);
    rect(0, 550, 450, 350);

    //Lower Box: rect (x1, y1, width, height);
    fill(0);
    rect(700, 620, 480, 200);

    newSkateboard2();

    fill(0, 255, 0);
    //creates "bridge"
    for (float i = 515; i<1200; i+=25) {
      //square(firstwheel, firstwheel-87, 25);
      square(i-50, firstwheel-87, 25);

      // text added 
      textSize(25);
      text("Score: 100", 950, 24, 200, 200);
    }
    if (mousePressed && mouseX>width-280) {
    background(255);
    newSkateboard3();
    fill(0, 255, 0);
    }
    if (mousePressed && mouseX>width-180) {
    background(255);
    newSkateboard4();
    fill(0, 255, 0);
    }    
    if (mousePressed && mouseX>width-80) {
    background(255);
    newSkateboard5();
    fill(0, 255, 0);
    }
    
    
    //prints a skate picture on screen 
    image(skate[randomPic], width/3, height/3, 125, 125);
    println (randomPic);
    
    /*ends sketch
    if(mousePressed && mouseX>1000){
      state="End";
    }
  } else if (state=="End"){
       background(0);
       text("Click to restart!", width/2, height/2);
   }*/
  //image is placed in the top left, then resized
  }
  image(img1, 5, 0);
  img1.resize(250, 125);
  println(state);
  println(mouseX);
  }
  }

//functions
void mousePressed(){
  randomPic = int(random(skate.length));
  if (state== "StartScreen") {
    state="Game";
  } else if (state=="End") {
    state= "StartScreen";
  }
}

//functions for skateboards AND rectangles
void makeSkateboard(){
  
  //Higher Box: rect (x1, y1, width, height);
  fill(255);
  rect(0, 550, 450, 350);

  //Lower Box: rect (x1, y1, width, height);
    fill(0);
    rect(700, 620, 480, 200);
    
  //skateboard tail (right)
    // line (x1,y1, x2, y2) 
    strokeWeight(3.25);
    line (600, 375, 608, 355);

    //skateboard tail (left)
    // line (x1,y1, x2, y2) 
    strokeWeight(3.25);
    line (500, 450, 480, 450);

    //skateboard
    // line (x1,y1, x2, y2) 
    strokeWeight(3.25);
    line (500, 450, 600, 375);

    //wheel1 (right)
    //circle(x, y, radius)
    strokeWeight(2);
    fill(255, 0, 0);
    circle(598, 395, 20);

    //wheel2 (left)
    //circle(x, y, radius)
    strokeWeight(2);
    fill(255, 0, 0);
    circle(520, 455, 20);
}

//First "FLAT" Skateboard
void newSkateboard(){
  
  //Higher Box: rect (x1, y1, width, height);
  fill(255);
  rect(0, 550, 450, 350);

  //Lower Box: rect (x1, y1, width, height);
  fill(0);
  rect(700, 620, 480, 200);
    
    
  //skateboard middle
  strokeWeight(3.25);
  line (500, 400, 620, 400);

    //new skateboard tail (left)
    line (485, 385, 500, 400);

    //new skateboard tail (right)
    line (620, 400, 635, 385);

    //wheel1 (right)
    //circle(x, y, radius)
    strokeWeight(2);
    fill(255, 0, 0);
    circle(605, 415, rad);

    //wheel2 (left)
    //circle(x, y, radius)
    strokeWeight(2);
    fill(255, 0, 0);
    circle(515, 415, rad);
    
    for (float i = 515; i<1200; i+=25) {
      //square(firstwheel, firstwheel-87, 25);
      square(i-50, firstwheel-87, 25);

      // text added 
      textSize(25);
      text("Score: 50", 950, 24, 200, 200);
    }
}
void newSkateboard2(){
  
  //Higher Box: rect (x1, y1, width, height);
  fill(255);
  rect(0, 550, 450, 350);

  //Lower Box: rect (x1, y1, width, height);
  fill(0);
  rect(700, 620, 480, 200);
  
    //skateboard middle
    strokeWeight(3.25);
    line (610, 400, 730, 400);

    //new skateboard tail (left)
    line (485, 385, 500, 400);

    //new skateboard tail (right)
    line (620, 400, 635, 385);

    //wheel1 (right)
    //circle(x, y, radius)
    strokeWeight(2);
    fill(255, 0, 0);
    circle(710, 415, rad);

    //wheel2 (left)
    //circle(x, y, radius)
    strokeWeight(2);
    fill(255, 0, 0);
    circle(620, 415, rad);
    
    for (float i = 515; i<1200; i+=25) {
    //square(firstwheel, firstwheel-87, 25);
    square(i-50, firstwheel-87, 25);

    // text added 
    textSize(25);
    text("Score: 100", 950, 24, 200, 200);
    }
}
void newSkateboard3(){
  
  //Higher Box: rect (x1, y1, width, height);
  fill(255);
  rect(0, 550, 450, 350);

  //Lower Box: rect (x1, y1, width, height);
    fill(0);
    rect(700, 620, 480, 200);
      //skateboard middle
    strokeWeight(3.25);
    line (710, 400, 830, 400);

    //new skateboard tail (left)
    line (485, 385, 500, 400);

    //new skateboard tail (right)
    line (620, 400, 635, 385);

    //wheel1 (right)
    //circle(x, y, radius)
    strokeWeight(2);
    fill(255, 0, 0);
    circle(815, 415, rad);

    //wheel2 (left)
    //circle(x, y, radius)
    strokeWeight(2);
    fill(255, 0, 0);
    circle(725, 415, rad);
    
    for (float i = 515; i<1200; i+=25) {
    //square(firstwheel, firstwheel-87, 25);
    square(i-50, firstwheel-87, 25);

    // text added 
    textSize(25);
    text("Score: 150", 950, 24, 200, 200);
    }
}
void newSkateboard4(){
  
  //Higher Box: rect (x1, y1, width, height);
  fill(255);
  rect(0, 550, 450, 350);

  //Lower Box: rect (x1, y1, width, height);
    fill(0);
    rect(700, 620, 480, 200);
      //skateboard middle
    strokeWeight(3.25);
    line (810, 400, 930, 400);

    //new skateboard tail (left)
    line (485, 385, 500, 400);

    //new skateboard tail (right)
    line (620, 400, 635, 385);

    //wheel1 (right)
    //circle(x, y, radius)
    strokeWeight(2);
    fill(255, 0, 0);
    circle(920, 415, rad);

    //wheel2 (left)
    //circle(x, y, radius)
    strokeWeight(2);
    fill(255, 0, 0);
    circle(830, 415, rad);

    for (float i = 515; i<1200; i+=25) {
    //square(firstwheel, firstwheel-87, 25);
    square(i-50, firstwheel-87, 25);

    // text added 
    textSize(25);
    text("Score: 200", 950, 24, 200, 200);
    }
}
void newSkateboard5(){
  
  //Higher Box: rect (x1, y1, width, height);
  fill(255);
  rect(0, 550, 450, 350);

  //Lower Box: rect (x1, y1, width, height);
    fill(0);
    rect(700, 620, 480, 200);
      //skateboard middle
    strokeWeight(3.25);
    line (910, 400, 1030, 400);

    //new skateboard tail (left)
    line (485, 385, 500, 400);

    //new skateboard tail (right)
    line (620, 400, 635, 385);

    //wheel1 (right)
    //circle(x, y, radius)
    strokeWeight(2);
    fill(255, 0, 0);
    circle(1025, 415, rad);

    //wheel2 (left)
    //circle(x, y, radius)
    strokeWeight(2);
    fill(255, 0, 0);
    circle(935, 415, rad);
    
        for (float i = 515; i<1200; i+=25) {
    //square(firstwheel, firstwheel-87, 25);
    square(i-50, firstwheel-87, 25);

    // text added 
    textSize(25);
    text("Score: 250", 950, 24, 200, 200);
    }
}
