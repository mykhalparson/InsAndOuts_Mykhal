 //AFTER REACHING THE MAX POTENTIOMETER VALUE, TURN IT BACK  BACK TO 0
import processing.serial.*; //imports Serial library from Processing

Serial myPort; // creates object from Serial class
int val=0; // creates variable for data coming from serial port

void setup() {
  size(400, 400);

  /*
   CHECK CONSOLE 
        printArray(Serial.list());
        Serial.list()[1].
        "/dev/cu.usbmodem14101"
 */
  printArray(Serial.list()); // this line prints the port list to the console
  String portName = Serial.list()[1]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);
  
  background(78,51,0);
}

void draw() {
  if ( myPort.available() > 0) { // If data is available,
    val = myPort.read(); // read it and store it in val
  }
  if (val>=50){
  //draws a square that grows and shrinks in relation to val
  fill (255,123,0);
  rect (width/2, height/2, val, val); //println (val); prints to Processing console
  }
  if (val>=65){
  fill (255,202,59);
  rect (0, 0, val/2, val/2); 
  }

  if (val>=200){
    textSize(40);
    text("FALL.", width/2, height/2);
  }
    if (val>=227){
    fill (255,123,0);
    textSize(40);
    text("FALL.", width/2, height/2);
  }

   if (val<70){
   fill (166,95,0);
   textSize(40);
   text("FALL.", width/2, height/2);
 }
  
}
