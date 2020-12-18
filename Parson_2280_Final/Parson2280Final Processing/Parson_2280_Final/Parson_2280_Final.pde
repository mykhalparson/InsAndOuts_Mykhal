//"Mykhal Parson's 20 Second Challenge", Click to start the game and click when 
//you have completed the challenge

import processing.serial.*;  //import Serial library

//http://code.compartmental.net/minim/
import ddf.minim.*;
Minim minim;
AudioPlayer sample1;

Serial myPort;  // create object from Serial class
String state = "StartScreen";


void setup() {
  size(1080, 720); 
  background (0);
  fill(255);
  textSize (26);
  textAlign (CENTER, CENTER);


  minim = new Minim(this);
  //loads file
  sample1=minim.loadFile("jeopardymusic.wav");
  
  //set up Serial communication
  printArray(Serial.list()); // prints port list to the console
  String portName = Serial.list()[1]; //change to match your port
  myPort = new Serial(this, portName, 9600); //initialize Serial communication at 9600 baud
}

void draw() {
  //text
  if(state=="StartScreen"){
  background (0);
  fill(255);
  textSize (100);
  textAlign (CENTER, CENTER);
  text ("20 \n SECOND \n CHALLENGE!!!", width/2, height/2-95);
  
  textSize(30);
  text("Click to Start!", width/2-7, height/2+155);
 
  
  myPort.write(0); //send a 0
  println ("0");
  
  //not needed, but just in case. Stops minim sample
   if ( sample1.isPlaying()){
     sample1.pause();
   }
  
  } else if (state=="Game1"){
  
  background (51,200,25);
  fill(255);
  textSize (200);
  textAlign (CENTER, CENTER);
  text ("START!!!", width/2, height/2-25);
  
  
  myPort.write(1); //sends a 1
  println ("1");

  sample1.play();
  
  } else if (state=="End"){
    background(255,0,0);
    fill(255);
    textSize (150);
    text("GAME \nOVER!!!", width/2+10, height/2);
   
   
    myPort.write(2); //send a 2
    println ("2");
    
    if ( sample1.isPlaying()){
          sample1.pause();
          sample1.rewind();
      }
  }
}

//myPort.write(0); //send a 0
//println ("0");

//functions
void mousePressed(){
  if (state== "StartScreen") {
    state="Game1";
  } else if (state == "Game1"){
    state="End";
  } else if (state == "End"){
    state="StartScreen";
  }
}
