// Define LED outputs
const unsigned int LED_RED_PIN    = 11;
const unsigned int LED_ORANGE_PIN = 12;
const unsigned int LED_GREEN_PIN  = 10;

// Define BAUD_RATE
const unsigned int BAUD_RATE = 9600;

// Define working variables
char c;
int red = 0;
int orange = 0;
int green = 0;
String result;

void setup() {
  // initialize serial:
  Serial.begin(9600);

  // make the pins outputs:
  pinMode(LED_RED_PIN, OUTPUT);
  pinMode(LED_ORANGE_PIN, OUTPUT);
  pinMode(LED_GREEN_PIN, OUTPUT);

  // setup default state:
  digitalWrite(LED_RED_PIN, LOW);
  digitalWrite(LED_ORANGE_PIN, LOW);
  digitalWrite(LED_GREEN_PIN, LOW);
}

void loop() {
  // if there's any serial available, read it:
  while (Serial.available()) {
    if (Serial.available() > 0) {
      result = "";
      c = Serial.read();

      Serial.print(String(c));
      result = result + " -> ";

      // Green
      if(c & 1) {
        green  = 1;
        result = result + "G";
      }
      else {
        green  = 0;
        result = result + "-";
      }

      // Orange
      if(c & 2) {
        orange = 1;
        result = result + "O";
      }
      else {
        orange = 0;
        result = result + "-";
      }

      // Red
      if(c & 4) {
        red    = 1;
        result = result + "R";
      }
      else {
        red    = 0;
        result = result + "-";
      }

      // Put right colors on LEDs
      digitalWrite(LED_RED_PIN   , red   );
      digitalWrite(LED_ORANGE_PIN, orange);
      digitalWrite(LED_GREEN_PIN , green );

      // And show outputs
      Serial.println(result);
    }
  }
}
