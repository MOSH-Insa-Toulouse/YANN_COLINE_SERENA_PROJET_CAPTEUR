
#include <SoftwareSerial.h>
#include <Arduino.h>
#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h> // LIBRAIRIE téléchargée sur internet
#include <Adafruit_SSD1306.h>


#define OLED_RESET -1
#define baudrate 9600
#define rxPin 11 //Broche 11 en tant que RX, � raccorder sur TX du HC-05
#define txPin 10 //Broche 10 en tant que RX, � raccorder sur TX du HC-05
#define NUMFLAKES 10
#define XPOS 0
#define YPOS 1
#define DELTAY 2
#define LOGO16_GLCD_HEIGHT 32
#define LOGO16_GLCD_WIDTH  128
#define ADCpin
#define pin A0


#if (SSD1306_LCDHEIGHT != 32)
#error("Height incorrect, please fix Adafruit_SSD1306.h!");
#endif



//MODUlE BLUETOOTH 
SoftwareSerial mySerial(rxPin, txPin); //D�finition du software serial

Adafruit_SSD1306 display(-1);

float mesure;

void setup() {
  mySerial.begin(baudrate);
  Serial.begin(baudrate);
 
  pinMode(rxPin, INPUT);
  pinMode(txPin, OUTPUT);

  display.begin(SSD1306_SWITCHCAPVCC, 0x3C);  // initialize with the I2C addr 0x3C (for the 128x32)
  display.display();
  display.clearDisplay(); 
  }

void loop(){

  mesure = analogRead(pin) / 4 ;
  //Rsensor = ( ( 1 + (R3/R2) ) * R1 * Vcc * ( 1 / mesure ) ) - R1 - R5 ; --> à calculer sur MIT App Inventor
  
  //bluetooth
  int i = 0;
  char textBluetooth[32] = {0};
  while (mySerial.available()){
    i = 0;
    do{ 
      textBluetooth[i++] = mySerial.read();
      delay(3);
    }while(mySerial.available());
    String test = (String)textBluetooth;
    test.trim();
    if(test == "Hello"){
      mySerial.println(mesure);

    }
  }
  
    
  String vString =  String(mesure*0.01953125, 3);

  //oled
  display.clearDisplay();
  robojaxText("Voltage:          ", 46, 5, 1.9, false);
  robojaxText(vString, 48, 17, 1.5, false);
  robojaxText("V", 86 ,17,1.5, false);
  display.drawRect(1, 1, 126,31, WHITE); 
  display.display();
  }



void robojaxText(String text, int x, int y,int size, boolean d) {

  display.setTextSize(size);
  display.setTextColor(WHITE);
  display.setCursor(x,y);
  display.println(text);
  if(d){
    display.display();
  }
}
