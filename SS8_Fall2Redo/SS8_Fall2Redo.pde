//Drag the mouse from the top left corner of the sketch to the middle 
//then back to the top left 

import processing.serial.*; //imports Serial library from Processing
Serial myPort; // creates object from Serial class
int val= 0; // creates variable for data coming from serial port

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
fill(250);
textSize(40);
text("FALL.", width/2, height/2);
}

void draw() {
  if ( myPort.available() > 0) { // If data is available,
    val = myPort.read(); // read it and store it in val
  }
  
  if (mouseX <= width/4) {
  //draws a square that grows and shrinks in relation to val
  fill (255,123,0);
  rect (width/2, height/2, val, val); //println (val); prints to Processing console
  val= int (map (mouseX, 0, width, 0, 255));
  myPort.write(val); //write to Serial
  println(val);  //print to console
  }
  
  if (mouseX <= width/2) {
  //draws a square that grows and shrinks in relation to val
  fill (255,202,59);
  rect (0, 0, val, val); 
  textSize(40);
  text("FALL.", width/2, height/2);
  val= int (map(mouseX, 0, width, 40, 300));
  myPort.write(val); //write to Serial
  println(val);  //print to console
  }
  
  if (mouseX>= width-100) {
  //draws a square that grows and shrinks in relation to val
  fill (255,202,59);
  rect (0, 0, val/2, val/2); 
  fill (255,202,59);
  textSize(40);
  text("FALL.", width/2, height/2);
  val= int (map (mouseX, 0, width, 0, 255));
  myPort.write(val); //write to Serial
  println(val);  //print to console
  }
}
