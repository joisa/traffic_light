/**********************************************************************************
**                                                                               **
**              Control de cruïlla semafòrica                                    **
**                                                                               **
**********************************************************************************/


//********** Includes *************************************************************


//********** Variables ************************************************************
// pins for the LEDs:
const int ledPin = 13;
int estat1, estat2 = 2;    // 0:Verd, 1:Tronja, 2:Vermell


//********** Setup ****************************************************************
void setup() {
  // initialize serial:
  Serial.begin(9600);
  // make the pins outputs:
  pinMode(ledPin, OUTPUT); 
}

//********** Loop *****************************************************************
void loop() {
  estat1 = 0;
  estat2 = 2;
  Serial.write(estat1);
  Serial.write(estat2);
  delay(2000);
  estat1 = 1;
  estat2 = 2;
  Serial.write(estat1);
  Serial.write(estat2);
  delay(1000);
  estat1 = 2;
  estat2 = 2;
  Serial.write(estat1);
  Serial.write(estat2);
  delay(500);
  estat1 = 2;
  estat2 = 0;
  Serial.write(estat1);
  Serial.write(estat2);
  delay(2000);
  estat1 = 2;
  estat2 = 1;
  Serial.write(estat1);
  Serial.write(estat2);
  delay(1000);
  estat1 = 2;
  estat2 = 2;
  Serial.write(estat1);
  Serial.write(estat2);
  delay(500);
}

//********** Funcions *************************************************************
