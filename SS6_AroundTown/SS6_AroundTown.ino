const int buttonPin = 2;
const int LED1 = 13;
const int LED2 = 12;
const int LED3 = 11;
const int LED4 = 10;
const int LED5 = 9;

//will change to either 1 or 0
int buttonState = 0; //creates variable to check if button is pressed

void setup() {
  //run once:

  pinMode(LED1, OUTPUT); //set pin to output for LED
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);
  pinMode(LED5, OUTPUT);

  pinMode(buttonPin, INPUT);
}

//runs infinitely
void loop() {
  // put your main code here, to run repeatedly:
  buttonState = digitalRead(buttonPin); //reads the push button value
  delay(10);

  if (buttonState == HIGH) {
    digitalWrite (LED1, HIGH);
    delay(100);    
    digitalWrite (LED2, LOW);
    delay(100);    
    digitalWrite (LED3, LOW);
    delay(100); 
    digitalWrite (LED4, LOW);
    delay(100);   
    digitalWrite (LED5, LOW);
    delay(100);

    digitalWrite (LED1, LOW);
    delay(100);   
    digitalWrite (LED2, HIGH);
    delay(100);   
    digitalWrite (LED3, LOW);
    delay(100);   
    digitalWrite (LED4, LOW);
    delay(100);   
    digitalWrite (LED5, LOW);
    delay(100);

    digitalWrite (LED1, LOW);
    delay(100);    
    digitalWrite (LED2, LOW);
    delay(100);    
    digitalWrite (LED3, HIGH);
    delay(100);    
    digitalWrite (LED4, LOW);
    delay(100);    
    digitalWrite (LED5, LOW);
    delay(100);

    digitalWrite (LED1, LOW);
    delay(100);    
    digitalWrite (LED2, LOW);
    delay(100);    
    digitalWrite (LED3, LOW);
    delay(100);    
    digitalWrite (LED4, HIGH);
    delay(100);    
    digitalWrite (LED5, LOW);
    delay(100);

    digitalWrite (LED1, LOW);
    delay(100);    
    digitalWrite (LED2, LOW);
    delay(100);    
    digitalWrite (LED3, LOW);
    delay(100);    
    digitalWrite (LED4, LOW);
    delay(250);    
    digitalWrite (LED5, HIGH);
    delay(250);

    //all lights
    digitalWrite (LED1, HIGH);  
    digitalWrite (LED2, HIGH);
    digitalWrite (LED3, HIGH);
    digitalWrite (LED4, HIGH);
    digitalWrite (LED5, HIGH);
    delay(1000);

    //reverse
    digitalWrite (LED1, LOW);
    delay(100);    
    digitalWrite (LED2, LOW);
    delay(100);    
    digitalWrite (LED3, LOW);
    delay(100);    
    digitalWrite (LED4, LOW);
    delay(100);    
    digitalWrite (LED5, HIGH);
    delay(250);

    digitalWrite (LED1, LOW);
    delay(100);    
    digitalWrite (LED2, LOW);
    delay(100);    
    digitalWrite (LED3, LOW);
    delay(100);    
    digitalWrite (LED4, HIGH);
    delay(100);    
    digitalWrite (LED5, LOW);
    delay(100);

    digitalWrite (LED1, LOW);
    delay(100);    
    digitalWrite (LED2, LOW);
    delay(100);    
    digitalWrite (LED3, HIGH);
    delay(100);    
    digitalWrite (LED4, LOW);
    delay(100);    
    digitalWrite (LED5, LOW);
    delay(100);

    digitalWrite (LED1, LOW);
    delay(100);    
    digitalWrite (LED2, HIGH);
    delay(100);    
    digitalWrite (LED3, LOW);
    delay(100);    
    digitalWrite (LED4, LOW);
    delay(100);    
    digitalWrite (LED5, LOW);
    delay(100);

    digitalWrite (LED1, HIGH);
    delay(100);    
    digitalWrite (LED2, LOW);
    delay(100);    
    digitalWrite (LED3, LOW);
    delay(100);    
    digitalWrite (LED4, LOW);
    delay(100);    
    digitalWrite (LED5, LOW);
    delay(100);
    
  } else {
    digitalWrite(LED1, LOW); //LEDs will NOT be on
    digitalWrite(LED2, LOW); //LEDs will NOT be on
    digitalWrite(LED3, LOW); //LEDs will NOT be on
    digitalWrite(LED4, LOW); //LEDs will NOT be on
    digitalWrite(LED5, LOW); //LEDs will NOT be on
  }
}
