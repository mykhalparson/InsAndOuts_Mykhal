//"Mykhal Parson's 20 Second Challenge"

import processing.serial.*;  //import Serial library
Serial myPort;  // create object from Serial class
String state = "StartScreen";
int val; 


void setup() {
  size(1080, 720); 
  background (0);
  fill(255);
  textSize (26);
  textAlign (CENTER, CENTER);

  
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
  
  val = 0;
  myPort.write(0); //send a 0
  println (val);
  
  
  } else if (state=="Game1"){
  
  background (51,200,25);
  fill(255);
  textSize (200);
  textAlign (CENTER, CENTER);
  text ("START!!!", width/2, height/2-25);
  
  val=1;
  myPort.write(1); //sends a 1
  println (val);

  } else if (state=="End"){
    background(255,0,0);
    fill(255);
    textSize (150);
    text("GAME \nOVER!!!", width/2+10, height/2);
    
    val=2;
    myPort.write(2); //send a 2
    println (val);
   
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
