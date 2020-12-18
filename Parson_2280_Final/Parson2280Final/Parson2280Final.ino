/*Code Borrowed (Anything with PinMode A-G and D1-D4) & modified from http://duinos.net/files/2015/common_anode_4digit_7_segment_led_display.ino
/*  A
   ---
F |   | B
  | G |
   ---
E |   | C
  |   |
   ---
    D 
Val & serial begin borrowed from MTEC 2280W/F SS8 Demo

//FSR Help (fsrReading & serial print) & code Structure from: https://www.instructables.com/Interfacing-Force-Sensitive-Resistor-to-Arduino/
*/
//FORCE IS IN SERIAL MONITOR

byte val;
int fsr = 0;
int fsrReading;

int LED1 = 1;
int pinA = 2;
int pinB = 3;
int pinC = 4;
int pinD = 5;
int pinE = 6;
int pinF = 7;
int pinG = 8;
//int D1 = 9;
//int D2 = 10;
int D3 = 11;
int D4 = 12;

// the setup routine runs once when you press reset:
void setup() {     



  //initialize the digital pins as outputs.
  pinMode(pinA, OUTPUT);     
  pinMode(pinB, OUTPUT);     
  pinMode(pinC, OUTPUT);     
  pinMode(pinD, OUTPUT);     
  pinMode(pinE, OUTPUT);     
  pinMode(pinF, OUTPUT);     
  pinMode(pinG, OUTPUT);   
 // pinMode(D1, OUTPUT);  
 // pinMode(D2, OUTPUT);  
  pinMode(D3, OUTPUT);  
  pinMode(D4, OUTPUT);
  Serial.begin(9600); // Start serial communication at 9600 bps
}

// the loop routine runs over and over again forever:
void loop() {
  if (Serial.available()) { // If data is available to read
    val = Serial.read(); // read it and store it in val
  }

  fsrReading = analogRead(fsr); 
  if(val==0){
  //
  Serial.print("\nForce = ");
  Serial.print(fsrReading); 
  delay(500); 
  
  digitalWrite(D3, HIGH);
  digitalWrite(D4, HIGH); 
  digitalWrite(pinA, LOW);   
  digitalWrite(pinB, LOW);   
  digitalWrite(pinC, LOW);   
  digitalWrite(pinD, LOW);   
  digitalWrite(pinE, LOW);   
  digitalWrite(pinF, LOW);   
  digitalWrite(pinG, LOW);  


  }

  else if(val==1){

  Serial.print("Force = \t");
  Serial.print(fsrReading);  
  delay(500);  

  
  
  //20
  digitalWrite(D3, LOW);
  digitalWrite(D4, HIGH); 
  
  digitalWrite(pinA, HIGH);   
  digitalWrite(pinB, HIGH);   
  digitalWrite(pinC, LOW);   
  digitalWrite(pinD, HIGH);   
  digitalWrite(pinE, HIGH);   
  digitalWrite(pinF, LOW);   
  digitalWrite(pinG, HIGH);   
  delay(250); 

  ////////
  ////
  digitalWrite(D3, HIGH);
  digitalWrite(D4, LOW); 
 
  digitalWrite(pinA, HIGH);   
  digitalWrite(pinB, HIGH);   
  digitalWrite(pinC, HIGH);   
  digitalWrite(pinD, HIGH);   
  digitalWrite(pinE, HIGH);   
  digitalWrite(pinF, HIGH);   
  digitalWrite(pinG, LOW);   
  delay(750);               
  

//19
  ////////
  ////
  digitalWrite(D3, LOW);
  digitalWrite(D4, HIGH); 

  digitalWrite(pinA, LOW);   
  digitalWrite(pinB, HIGH);   
  digitalWrite(pinC, HIGH);   
  digitalWrite(pinD, LOW);   
  digitalWrite(pinE, LOW);   
  digitalWrite(pinF, LOW);   
  digitalWrite(pinG, LOW); 

  delay(250); 

  ////////
  ////
  digitalWrite(D3, HIGH);
  digitalWrite(D4, LOW); 
 
  digitalWrite(pinA, HIGH);   
  digitalWrite(pinB, HIGH);   
  digitalWrite(pinC, HIGH);   
  digitalWrite(pinD, HIGH);   
  digitalWrite(pinE, LOW);   
  digitalWrite(pinF, HIGH);   
  digitalWrite(pinG, HIGH);   
  delay(750); 

//18

  delay(10);
  ////////
  ////
  digitalWrite(D3, LOW);
  digitalWrite(D4, HIGH); 

  digitalWrite(pinA, LOW);   
  digitalWrite(pinB, HIGH);   
  digitalWrite(pinC, HIGH);   
  digitalWrite(pinD, LOW);   
  digitalWrite(pinE, LOW);   
  digitalWrite(pinF, LOW);   
  digitalWrite(pinG, LOW); 

  delay(250); 

  
  digitalWrite(D3, HIGH);
  digitalWrite(D4, LOW); 
 
  digitalWrite(pinA, HIGH);   
  digitalWrite(pinB, HIGH);   
  digitalWrite(pinC, HIGH);   
  digitalWrite(pinD, HIGH);   
  digitalWrite(pinE, HIGH);   
  digitalWrite(pinF, HIGH);   
  digitalWrite(pinG, HIGH);   
  delay(750); 


//17

  digitalWrite(D3, LOW);
  digitalWrite(D4, HIGH); 

  digitalWrite(pinA, LOW);   
  digitalWrite(pinB, HIGH);   
  digitalWrite(pinC, HIGH);   
  digitalWrite(pinD, LOW);   
  digitalWrite(pinE, LOW);   
  digitalWrite(pinF, LOW);   
  digitalWrite(pinG, LOW); 

  delay(250); 


  digitalWrite(D3, HIGH);
  digitalWrite(D4, LOW); 

  digitalWrite(pinA, HIGH);   
  digitalWrite(pinB, HIGH);   
  digitalWrite(pinC, HIGH);   
  digitalWrite(pinD, LOW);   
  digitalWrite(pinE, LOW);   
  digitalWrite(pinF, LOW);   
  digitalWrite(pinG, LOW);   
  delay(750); 

//16


  digitalWrite(D3, LOW);
  digitalWrite(D4, HIGH); 

  digitalWrite(pinA, LOW);   
  digitalWrite(pinB, HIGH);   
  digitalWrite(pinC, HIGH);   
  digitalWrite(pinD, LOW);   
  digitalWrite(pinE, LOW);   
  digitalWrite(pinF, LOW);   
  digitalWrite(pinG, LOW); 

  delay(250); 


  digitalWrite(D3, HIGH);
  digitalWrite(D4, LOW); 
  
  digitalWrite(pinA, HIGH);   
  digitalWrite(pinB, LOW);   
  digitalWrite(pinC, HIGH);   
  digitalWrite(pinD, HIGH);   
  digitalWrite(pinE, HIGH);   
  digitalWrite(pinF, HIGH);   
  digitalWrite(pinG, HIGH);   
  delay(750); 
  
//15


  digitalWrite(D3, LOW);
  digitalWrite(D4, HIGH); 

  digitalWrite(pinA, LOW);   
  digitalWrite(pinB, HIGH);   
  digitalWrite(pinC, HIGH);   
  digitalWrite(pinD, LOW);   
  digitalWrite(pinE, LOW);   
  digitalWrite(pinF, LOW);   
  digitalWrite(pinG, LOW); 

  delay(250); 


  digitalWrite(D3, HIGH);
  digitalWrite(D4, LOW); 
  
  digitalWrite(pinA, HIGH);   
  digitalWrite(pinB, LOW);   
  digitalWrite(pinC, HIGH);   
  digitalWrite(pinD, HIGH);   
  digitalWrite(pinE, LOW);   
  digitalWrite(pinF, HIGH);   
  digitalWrite(pinG, HIGH);   
  delay(750); 

//14


  digitalWrite(D3, LOW);
  digitalWrite(D4, HIGH); 

  digitalWrite(pinA, LOW);   
  digitalWrite(pinB, HIGH);   
  digitalWrite(pinC, HIGH);   
  digitalWrite(pinD, LOW);   
  digitalWrite(pinE, LOW);   
  digitalWrite(pinF, LOW);   
  digitalWrite(pinG, LOW); 

  delay(250); 
  

  digitalWrite(D3, HIGH);
  digitalWrite(D4, LOW); 
 
  digitalWrite(pinA, LOW);   
  digitalWrite(pinB, HIGH);   
  digitalWrite(pinC, HIGH);   
  digitalWrite(pinD, LOW);   
  digitalWrite(pinE, LOW);   
  digitalWrite(pinF, HIGH);   
  digitalWrite(pinG, HIGH);   
  delay(750); 


//13


  digitalWrite(D3, LOW);
  digitalWrite(D4, HIGH); 

  digitalWrite(pinA, LOW);   
  digitalWrite(pinB, HIGH);   
  digitalWrite(pinC, HIGH);   
  digitalWrite(pinD, LOW);   
  digitalWrite(pinE, LOW);   
  digitalWrite(pinF, LOW);   
  digitalWrite(pinG, LOW); 

  delay(250); 

  digitalWrite(D3, HIGH);
  digitalWrite(D4, LOW); 
  
  digitalWrite(pinA, HIGH);   
  digitalWrite(pinB, HIGH);   
  digitalWrite(pinC, HIGH);   
  digitalWrite(pinD, HIGH);   
  digitalWrite(pinE, LOW);   
  digitalWrite(pinF, LOW);   
  digitalWrite(pinG, HIGH);   
  delay(750); 

//12


  digitalWrite(D3, LOW);
  digitalWrite(D4, HIGH); 

  digitalWrite(pinA, LOW);   
  digitalWrite(pinB, HIGH);   
  digitalWrite(pinC, HIGH);   
  digitalWrite(pinD, LOW);   
  digitalWrite(pinE, LOW);   
  digitalWrite(pinF, LOW);   
  digitalWrite(pinG, LOW); 

  delay(250); 


  digitalWrite(D3, HIGH);
  digitalWrite(D4, LOW); 
  
  digitalWrite(pinA, HIGH);   
  digitalWrite(pinB, HIGH);   
  digitalWrite(pinC, LOW);   
  digitalWrite(pinD, HIGH);   
  digitalWrite(pinE, HIGH);   
  digitalWrite(pinF, LOW);   
  digitalWrite(pinG, HIGH);   
  delay(750); 


  //11


  digitalWrite(D3, LOW);
  digitalWrite(D4, LOW); 

  digitalWrite(pinA, LOW);   
  digitalWrite(pinB, HIGH);   
  digitalWrite(pinC, HIGH);   
  digitalWrite(pinD, LOW);   
  digitalWrite(pinE, LOW);   
  digitalWrite(pinF, LOW);   
  digitalWrite(pinG, LOW);   
  delay(1000); 

//10
  
  digitalWrite(D3, LOW);
  digitalWrite(D4, HIGH); 

  digitalWrite(pinA, LOW);   
  digitalWrite(pinB, HIGH);   
  digitalWrite(pinC, HIGH);   
  digitalWrite(pinD, LOW);   
  digitalWrite(pinE, LOW);   
  digitalWrite(pinF, LOW);   
  digitalWrite(pinG, LOW); 

  delay(250); 


  digitalWrite(D3, HIGH);
  digitalWrite(D4, LOW); 
 
  digitalWrite(pinA, HIGH);   
  digitalWrite(pinB, HIGH);   
  digitalWrite(pinC, HIGH);   
  digitalWrite(pinD, HIGH);   
  digitalWrite(pinE, HIGH);   
  digitalWrite(pinF, HIGH);   
  digitalWrite(pinG, LOW);     
  delay(750); 


 //9

  digitalWrite(D3, HIGH);
  digitalWrite(D4, LOW); 
 
  digitalWrite(pinA, HIGH);   
  digitalWrite(pinB, HIGH);   
  digitalWrite(pinC, HIGH);   
  digitalWrite(pinD, HIGH);   
  digitalWrite(pinE, LOW);   
  digitalWrite(pinF, HIGH);   
  digitalWrite(pinG, HIGH);   
  delay(1000); 

 //8

  digitalWrite(D3, HIGH);
  digitalWrite(D4, LOW); 
 
  digitalWrite(pinA, HIGH);   
  digitalWrite(pinB, HIGH);   
  digitalWrite(pinC, HIGH);   
  digitalWrite(pinD, HIGH);   
  digitalWrite(pinE, HIGH);   
  digitalWrite(pinF, HIGH);   
  digitalWrite(pinG, HIGH);   
  delay(1000); 

//7

  digitalWrite(D3, HIGH);
  digitalWrite(D4, LOW); 

  digitalWrite(pinA, HIGH);   
  digitalWrite(pinB, HIGH);   
  digitalWrite(pinC, HIGH);   
  digitalWrite(pinD, LOW);   
  digitalWrite(pinE, LOW);   
  digitalWrite(pinF, LOW);   
  digitalWrite(pinG, LOW);   
  delay(1000); 
 

//6

  digitalWrite(D3, HIGH);
  digitalWrite(D4, LOW); 
  
  digitalWrite(pinA, HIGH);   
  digitalWrite(pinB, LOW);   
  digitalWrite(pinC, HIGH);   
  digitalWrite(pinD, HIGH);   
  digitalWrite(pinE, HIGH);   
  digitalWrite(pinF, HIGH);   
  digitalWrite(pinG, HIGH);   
  delay(1000); 


//5

  digitalWrite(D3, HIGH);
  digitalWrite(D4, LOW); 
  
  digitalWrite(pinA, HIGH);   
  digitalWrite(pinB, LOW);   
  digitalWrite(pinC, HIGH);   
  digitalWrite(pinD, HIGH);   
  digitalWrite(pinE, LOW);   
  digitalWrite(pinF, HIGH);   
  digitalWrite(pinG, HIGH);   
  delay(1000); 


//4

  digitalWrite(D3, HIGH);
  digitalWrite(D4, LOW); 
 
  digitalWrite(pinA, LOW);   
  digitalWrite(pinB, HIGH);   
  digitalWrite(pinC, HIGH);   
  digitalWrite(pinD, LOW);   
  digitalWrite(pinE, LOW);   
  digitalWrite(pinF, HIGH);   
  digitalWrite(pinG, HIGH);   
  delay(1000); 

//3

  digitalWrite(D3, HIGH);
  digitalWrite(D4, LOW); 
 
  digitalWrite(pinA, HIGH);   
  digitalWrite(pinB, HIGH);   
  digitalWrite(pinC, HIGH);   
  digitalWrite(pinD, HIGH);   
  digitalWrite(pinE, LOW);   
  digitalWrite(pinF, LOW);   
  digitalWrite(pinG, HIGH);   
  delay(1000); 


//2
  ////////
  ////
  digitalWrite(D3, HIGH);
  digitalWrite(D4, LOW); 
  
  digitalWrite(pinA, HIGH);   
  digitalWrite(pinB, HIGH);   
  digitalWrite(pinC, LOW);   
  digitalWrite(pinD, HIGH);   
  digitalWrite(pinE, HIGH);   
  digitalWrite(pinF, LOW);   
  digitalWrite(pinG, HIGH);   
  delay(1000); 

//1
  digitalWrite(D3, HIGH);
  digitalWrite(D4, LOW); 

  digitalWrite(pinA, LOW);   
  digitalWrite(pinB, HIGH);   
  digitalWrite(pinC, HIGH);   
  digitalWrite(pinD, LOW);   
  digitalWrite(pinE, LOW);   
  digitalWrite(pinF, LOW);   
  digitalWrite(pinG, LOW);   
  delay(1000); 

 //0
  digitalWrite(D3, HIGH);
  digitalWrite(D4, LOW); 
 
  digitalWrite(pinA, HIGH);   
  digitalWrite(pinB, HIGH);   
  digitalWrite(pinC, HIGH);   
  digitalWrite(pinD, HIGH);   
  digitalWrite(pinE, HIGH);   
  digitalWrite(pinF, HIGH);   
  digitalWrite(pinG, LOW);   
  delay(100000);               
} else if(val==2){
 //0
  digitalWrite(D3, HIGH);
  digitalWrite(D4, LOW); 
 
  digitalWrite(pinA, HIGH);   
  digitalWrite(pinB, HIGH);   
  digitalWrite(pinC, HIGH);   
  digitalWrite(pinD, HIGH);   
  digitalWrite(pinE, HIGH);   
  digitalWrite(pinF, HIGH);   
  digitalWrite(pinG, LOW); 

  Serial.print("Force = \n");
  Serial.print(fsrReading);  
  delay(1000);
  }
  delay(10);
}
