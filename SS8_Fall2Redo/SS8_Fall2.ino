//byte val;
const int SENSOR = A0; //sensor hooked up to analog pin A0
const int buzzer = 12; //buzzer to arduino pin 12
//const int LED1 = 7; // variable for which pin
//const int LED2 = 8; 
//const int LED3 = 9;
int val = 0;
int frequency = 0;

void setup() {
  //pinMode (SENSOR, INPUT);
  //pinMode(LED1, OUTPUT); // set pin as output
  //pinMode(LED2, OUTPUT);
  //pinMode(LED3, OUTPUT);
  pinMode(buzzer, OUTPUT); // Set buzzer - pin 12 as an output
  Serial.begin(9600); // Start serial communication at 9600 baud
}

void loop() {
   if (Serial.available()) { // If data is available to read
    val = Serial.read(); // read it and store it in val
    delay (250);
  }
    frequency = map (val, 0, 255, 2000, 3000);
    tone (buzzer, frequency, 100);  // send frequency at 10 millis duration
    delay (500);  
}
