// DEMO FOR SENDING SERIAL DATA FROM ARDUINO TO PROCESSING
//READS ANALOG SENSOR AND WRITES VALUE TO SERIAL PORT 

const int SENSOR = A0; //sensor hooked up to analog pin A0
const int buzzer = 12; //buzzer to arduino pin 12
const int LED1 = 7; // variable for which pin
const int LED2 = 8; 
const int LED3 = 9;
int val = 0;


void setup() {
  pinMode (SENSOR, INPUT);
  pinMode(LED1, OUTPUT); // set pin as output
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(buzzer, OUTPUT); // Set buzzer - pin 12 as an output
  Serial.begin(9600); // Start serial communication at 9600 baud
}

void loop() {
  val = analogRead(SENSOR); //read sensor and assign to variable called val
  val = val / 4; //divide val by 4 or remap values to get byte-sized 0-255
  delay(100); // Wait 100 milliseconds

  /////////Uncomment Serial.print() OR Serial.write() and not both!//////////////
  
  //Serial. println(val); //to send human-readable data to Arduino monitor
  Serial.write(val);  //to send binary data to Processing
  
  if (val<=65){
  digitalWrite(LED1, LOW); // turn LEDs off
  digitalWrite(LED2, LOW);
  digitalWrite(LED3, LOW);
  noTone(buzzer);
   
  }
  
  if (val>=80){
  digitalWrite(LED1, HIGH); 
  digitalWrite(LED2, LOW);
  digitalWrite(LED3, LOW);
  tone(buzzer, 500); //500 hz sound signal
 
  }
  
  
  if (val>=160){
  digitalWrite(LED1, HIGH); 
  digitalWrite(LED2, HIGH);
  digitalWrite(LED3, LOW);
  tone(buzzer, 1000); //1000 hz sound signal
 
  }
  
  if (val>=240){
  digitalWrite(LED1, HIGH); 
  digitalWrite(LED2, HIGH);
  digitalWrite(LED3, HIGH);
  tone(buzzer, 2000); //1.5KHz sound signal
  }
  delay(500);        // ...for 800 milliseconds
  noTone(buzzer);     // Stop sound...
}
