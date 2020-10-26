// Mykhal Parson - "SK8"
//Press the mouse to change the background of the sketch,"level" the board to 
//complete the ollie, and raise the bridge
//move the mouse right to collect coins
//Then move it left. Keep it pressed to unlock level two. Move right to finish level 2
//Run the code again to get a new background color

String state = "StartScreen";
//import processing.sound.*;
//SoundFile file;


PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;

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
    
  //PNG image loads
  img1 = loadImage("Thps2.png");
  img2 = loadImage("coin.png");
  img3 = loadImage("coin.png");
  img4 = loadImage("coin.png");
  img5 = loadImage("coin.png");
  img6 = loadImage("coin.png");
  
  skate[0] = loadImage ("skate1.png");
  skate[1] = loadImage ("skate2.png");
  skate[2] = loadImage ("skate3.png");
  skate[3] = loadImage ("skate4.png");
  skate[4] = loadImage ("skate5.png");
  
  //file = new SoundFile(this, "smoth-synth.aiff");   
  // Play the file in a loop
  //file.loop();
}


void draw() { 
 
   if(state=="StartScreen"){
     background (255,165,0);
     textSize(40);
     text("START", width-610, height/2);
     textSize(30);
     text("High Score: 0", width-640, (height/2)+60);
 
   } else if (state=="Game1"){
   
    //background color changes, board is leveled
    if (mousePressed) {

    background(r, g, b);
    
    //prints a skate picture on screen 
    image(skate[randomPic], width/3, height/3, 100,100);
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
    fill(255,0,0);
    for (float i = 515; i<730; i+=25) {
      square(i-50, firstwheel-87, 25);
    //loads coins
    coinLoad();
    }
  } else {
    background(0, 250, 100);

    //"score: 0"
    fill(0);
    textSize(25);
    //text("Score: 0", 950, 24, 200, 200);

    //creates original skateboard
    makeSkateboard();

    fill(255, 0, 0);
    //creates "bridge"
    for (float i = 515; i<750; i+=25) {
      //square(firstwheel, firstwheel-87, 25);
      square(i-65, firstwheel+105, 25);
    }
  }

  if (mousePressed && mouseX>width/2+100) {
    background(0,255,100);
    fill(0, 255, 0);
    newSkateboard();
    //loads coins
    image(img2, 100, 387);
    img2.resize(45,45);
    image(img3, 250, 387);
    img3.resize(45,45);
    image(img4, 400, 387);
    img4.resize(45,45);
    image(img6, 900, 387);
    img6.resize(45,45);
    }

    if (mousePressed && mouseX>width-454) {

    background(0,255,100);

    newSkateboard();
       
      fill(0);
      // text added 
      textSize(25);
      text("Score: 100", 950, 24, 200, 200);
      
      image(img2, 100, 387);
      img2.resize(45,45);
      image(img3, 250, 387);
      img3.resize(45,45);
      image(img4, 400, 387);
      img4.resize(45,45);
      image(img6, 900, 387);
      img6.resize(45,45);
      
      fill(0, 255, 0);
      //creates "bridge"
      for (float i = 515; i<1200; i+=25) {
      fill(255, 0, 0);
      //square(firstwheel, firstwheel-87, 25);
      square(i-50, firstwheel-87, 25);
      }
   }
    if (mousePressed && mouseX>width-280) {
      background(0,255,100);
      newSkateboard();
      
      image(img2, 100, 387);
      img2.resize(45,45);
      image(img3, 250, 387);
      img3.resize(45,45);
      image(img4, 400, 387);
      img4.resize(45,45);
      
      // text added 
      fill(0);
      textSize(25);
      text("Score: 150", 950, 24, 200, 200);
      fill(0, 255, 100);
      
      for (float i = 515; i<1200; i+=25) {
      //square(firstwheel, firstwheel-87, 25);
      fill(255,0,0);
      square(i-50, firstwheel-87, 25);
    }
    }
    if (mousePressed && mouseX>width-180) {
      background(0,255,100);
      newSkateboard();
      
      // text added 
      fill(0);
      textSize(25);
      text("Score: 250", 950, 24, 200, 200);
      fill(0, 255, 100);
      
      image(img2, 100, 387);
      img2.resize(45,45);
      image(img3, 250, 387);
      img3.resize(45,45);
      image(img4, 400, 387);
      img4.resize(45,45);
      
      for (float i = 515; i<1200; i+=25) {
      //square(firstwheel, firstwheel-87, 25);
      fill(255,0,0);
      square(i-50, firstwheel-87, 25);
    } 
    }
    if (mousePressed && mouseX>width-80) {
      background(0,255,100);
      newSkateboard();
        
      // text added 
      fill(0);
      textSize(25);
      text("Score: 250", 950, 24, 200, 200);
      fill(0, 255, 100);
      
      //loads coins
      image(img2, 100, 387);
      img2.resize(45,45);
      image(img3, 250, 387);
      img3.resize(45,45);
      image(img4, 400, 387);
      img4.resize(45,45);
      
      for (float i = 0; i<1200; i+=25) {
      //square(firstwheel, firstwheel-87, 25);
      fill(255,0,0);
      square(i-50, firstwheel-87, 25);
    } 
    }
   
    //prints a skate picture on screen 
    image(skate[randomPic], width/3, height/3, 100, 100);
    println (randomPic);
    
    //ends sketch
    if(mousePressed && mouseX>1097){
      state="Game2";
    }
  } else if (state=="Game2"){
    
       
   if (mousePressed && mouseX<(width/2)-100) {

    background(0,255,100);
    
    newSkateboard();
    

    for (float i = 0; i<1200; i+=25) {
      //square(firstwheel, firstwheel-87, 25);
      
      fill(255,0,0);
      square(i, firstwheel-87, 25);

      // text added 
      fill(0);
      textSize(25);
      text("Score: 300", 950, 24, 200, 200);
      }
    image(img2, 100, 387);
    img2.resize(45,45);
    image(img3, 250, 387);
    img3.resize(45,45);
    image(img4, 400, 387);
    img4.resize(45,45);
  }
    
    if (mousePressed && mouseX>width/2) {
    background(0,255,100);
    fill(0, 255, 0);
    newSkateboard();
    //loads coins
    image(img2, 100, 387);
    img2.resize(45,45);
    image(img3, 250, 387);
    img3.resize(45,45);
    image(img4, 400, 387);
    img4.resize(45,45);
    
     // text added 
     fill(0);
     textSize(25);
     text("Score: 300", 950, 24, 200, 200);
     
      for (float i = 0; i<1200; i+=25) {
      //square(firstwheel, firstwheel-87, 25);
      fill(255,0,0);
      square(i-50, firstwheel-87, 25);
    }
    } 
     if (mousePressed && mouseX<421) {
      background(0,255,100);
      newSkateboard();
      
      // text added 
      fill(0);
      textSize(25);
      text("Score: 350", 950, 24, 200, 200);
      fill(0, 255, 100);
      
      //loads coins
      image(img2, 100, 387);
      img2.resize(45,45);
      image(img3, 250, 387);
      img3.resize(45,45);
      
      //bridge
      for (float i = 0; i<1200; i+=25) {
      fill(255, 0, 0);
      //square(firstwheel, firstwheel-87, 25);
      square(i-50, firstwheel-87, 25);
    }
    }
    if (mousePressed && mouseX<268) {
      background(0,255,100);
      newSkateboard();
      
      // text added 
      fill(0);
      textSize(25);
      text("Score: 400", 950, 24, 200, 200);
      fill(0, 255, 100);
      
      //loads coins
      image(img2, 100, 387);
      img2.resize(45,45);
      
      fill(0, 255, 0);
      //creates "bridge"
      for (float i = 0; i<1200; i+=25) {
      fill(255, 0, 0);
      //square(firstwheel, firstwheel-87, 25);
      square(i-50, firstwheel-87, 25);
      }
    }
    if (mousePressed && mouseX<121) {
      background(0,255,100);
      newSkateboard();
      // text added 
      fill(0);
      textSize(25);
      text("Score: 500", 950, 24, 200, 200);
      fill(0, 255, 100);
      fill(0, 255, 0);
      //creates "bridge"
      for (float i = 0; i<1200; i+=25) {
      fill(255, 0, 0);
      //square(firstwheel, firstwheel-87, 25);
      square(i-50, firstwheel-87, 25);
      }
      
    }
     //prints a skate picture on screen 
    image(skate[randomPic], width/3, height/3, 100, 100);
    println (randomPic);
    
    //ends sketch
    if(mousePressed && mouseX<-50){
      state="Game3";
  }
  }
    else if (state=="Game3"){   
    //background color changes, board is leveled
    if (mousePressed) {

    background(r, g, b);
    
    //prints a skate picture on screen 
    image(skate[randomPic], width/3, height/3, 100,100);
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
    fill(255,0,0);
    for (float i = 515; i<730; i+=25) {
      square(i-50, firstwheel-87, 25);

    }
  } 
   if (mousePressed && mouseX<(width/2)-100) {

    background(0,255,100);
    
    newSkateboard();

    for (float i = 0; i<1200; i+=25) {
      //square(firstwheel, firstwheel-87, 25);
      
      fill(255,0,0);
      square(i, firstwheel-87, 25);

      // text added 
      fill(0);
      textSize(25);
      text("Score: 700", 950, 24, 200, 200);
      
     //loads coins

    image(img5, 650, 387);
    img5.resize(45,45);
    image(img6, 900, 387);
    img6.resize(45,45);
        }
  }
    if (mousePressed && mouseX>300) {

    background(0,255,100);

    newSkateboard();
       
      fill(0);
      // text added 
      textSize(25);
      text("Score: 750", 950, 24, 200, 200);
      
      fill(0, 255, 0);
      //creates "bridge"
      for (float i = 0; i<1200; i+=25) {
      fill(255, 0, 0);
      //square(firstwheel, firstwheel-87, 25);
      square(i-50, firstwheel-87, 25);

    }      
    //loads coins
    image(img5, 650, 387);
    img5.resize(45,45);
    image(img6, 900, 387);
    img6.resize(45,45);
    }
    if (mousePressed && mouseX>660) {
      background(0,255,100);
      newSkateboard();
      // text added 
      fill(0);
      textSize(25);
      text("Score: 800", 950, 24, 200, 200);
      fill(0, 255, 100);
      //loads coins
      image(img6, 900, 387);
      img6.resize(45,45);
      
      for (float i = width/2 ; i<1200; i+=25) {
      //square(firstwheel, firstwheel-87, 25);
      fill(255,0,0);
      square(i-50, firstwheel-87, 25);
    }
    }
    if (mousePressed && mouseX>width-180) {
      background(0,255,100);
      newSkateboard();
      // text added 
      text("Score: 850", 950, 24, 200, 200);
      fill(0, 255, 100);
      //loads coins
      image(img6, 900, 387);
      img6.resize(45,45);
      
      for (float i = 900; i<1200; i+=25) {
      fill(255, 0, 0);
      //square(firstwheel, firstwheel-87, 25);
      square(i-50, firstwheel-87, 25);
    }
    }    
    if (mousePressed && mouseX>887) {
      background(0,255,100);
      newSkateboard();
      // text added 
      fill(0);
      textSize(25);
      text("Score: 900", 950, 24, 200, 200);
      fill(0, 255, 100);
      
      for (float i = 900; i<1200; i+=25) {
      fill(255, 0, 0);
      //square(firstwheel, firstwheel-87, 25);
      square(i-50, firstwheel-87, 25);
    }
    } 
      if (mousePressed && mouseX<421) {
      background(0,255,100);
      newSkateboard();
      // text added 
      fill(0);
      textSize(25);
      text("Score: 700", 950, 24, 200, 200);
      fill(0, 255, 100);
      
      for (float i = 0; i<1200; i+=25) {
      fill(255, 0, 0);
      //square(firstwheel, firstwheel-87, 25);
      square(i-50, firstwheel-87, 25);
    }
     //loads coins
    image(img4, 400, 387);
    img4.resize(45,45);
    image(img5, 650, 387);
    img5.resize(45,45);
    image(img6, 900, 387);
    img6.resize(45,45);
    }
    if (mousePressed && mouseX<200) {
      background(0,255,100);
      newSkateboard();
      // text added 
      fill(0);
      textSize(25);
      text("Score: 600", 950, 24, 200, 200);
      fill(0, 255, 100);
      
    //loads coins 
    image(img3, 250, 387);
    img3.resize(45,45);
    image(img4, 400, 387);
    img4.resize(45,45);
    image(img5, 650, 387);
    img5.resize(45,45);
    image(img6, 900, 387);
    img6.resize(45,45);
    
      for (float i = 0; i<1200; i+=25) {
      //square(firstwheel, firstwheel-87, 25);
      fill(255,0,0);
      square(i-50, firstwheel-87, 25);
    }
    }
   
    //prints a skate picture on screen 
    image(skate[randomPic], width/3, height/3, 100, 100);
    println (randomPic);
    
    //ends sketch
    if(mousePressed && mouseX>1120){
      state="End";
    }
    
  }
  
  else if (state=="End"){
       background(0,200,0);
       textSize(25);
       text("New High Score! Click to restart!", (width/2)-200, (height/2)+50);
       textSize(90);
       text("1000!", (width/2)-150, height/2-50);

   }
  image(img1, 5, 0);
  img1.resize(140, 165);
  println(state);
  println("mouseX=" +mouseX);
  //image is placed in the top left, then resized
  }

   
//functions
void mousePressed(){
  randomPic = int(random(skate.length));
  if (state== "StartScreen") {
    state="Game1";
  }  else if (state=="Game2") {
    state= "Game3";
  } else if (state=="Game3") {
    state= "End";
  }else if (state=="End") {
    state= "StartScreen";
  }
}

// -------------------------------------------

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
  line (mouseX, 400, mouseX+120, 400);

    //new skateboard tail (left)
    line (mouseX-15, 385, mouseX, 400);

    //new skateboard tail (right)
    line (mouseX+120, 400, mouseX+131, 387);

    //wheel1 (right)
    //circle(x, y, radius)
    strokeWeight(2);
    fill(255, 0, 0);
    circle(mouseX+100, 415, rad);

    //wheel2 (left)
    //circle(x, y, radius)
    strokeWeight(2);
    fill(255, 0, 0);
    circle(mouseX+10, 415, rad);


    }
  
  void coinLoad(){
    image(img2, 100, 387);
    img2.resize(45,45);
    image(img3, 250, 387);
    img3.resize(45,45);
    image(img4, 400, 387);
    img4.resize(45,45);
    image(img5, 650, 387);
    img5.resize(45,45);
    image(img6, 900, 387);
    img6.resize(45,45);
  }
