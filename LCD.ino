
#include <LiquidCrystal.h>
LiquidCrystal lcd(12, 11, 5, 4, 3, 2);

String letter[]={"a","b","c","d","f","h","i","n","p"}; // Data received from the serial port
int atime=1000;
char val;
void setup() 
{
//initialize serial communications at a 9600 baud rate
Serial.begin(9600);
lcd.begin(16, 2);
establishContact();
}


 void loop() {
  
 if (Serial.available() > 0) { // If data is available to read,
    val = Serial.read(); // read it and store it in val
  Serial.println(val);
   if (val==( '1') )
   { 
    lcd.clear();
       lcd.print("Hello");
       delay(atime);
       lcd.clear();
   } 
   else if (val == '2') 
   { 
    lcd.clear();
       lcd.print("Bye");
       delay(atime);
       lcd.clear();
   } 
   else if (val == '3') 
   { 
    lcd.clear();
       lcd.print("Where is the");
       lcd.setCursor(0, 1);
       lcd.print("closest restuarant?");
       delay(atime);
       lcd.clear();
   } 
   else if (val == '4') 
   { 
    lcd.clear();
       lcd.print("I need help,");
       lcd.setCursor(0, 1);
       lcd.print("Call 911");
              delay(atime);

       lcd.clear();
   } 
   
   else if (val == '5') 
   { 
    lcd.clear();
       lcd.print("Where is the closest");
       lcd.setCursor(0, 1);
       lcd.print("Bus Station?");
       delay(atime);
       lcd.clear();
   } 
   
   else if (val == '6') 
   { 
    lcd.clear();
       lcd.print("What time");
       lcd.setCursor(0, 1);
       lcd.print("is it?");
       delay(atime);
       lcd.clear();
   } 
   else if (val == '7') 
   { 
    lcd.clear();
       lcd.print("Where is the");
       lcd.setCursor(0, 1);
       lcd.print("Closest Washroom?");
       delay(atime);
       lcd.clear();
   } 
  
   else if (val == '8') 
   { 
    lcd.clear();
       lcd.print("Sorry");
       delay(atime);
       lcd.clear();
   } 
  
   
    else if (val == '9') 
   { 
    lcd.clear();
       lcd.print("Thank You");
       delay(atime);
       lcd.clear();
   } 
    
   else if (val == '0') 
   { 
    lcd.clear();
       lcd.print("I love Digiflare");
       delay(atime);
       lcd.clear();
   } 
   else if (val == 'y') 
   { 
    lcd.clear();
       lcd.print("What is");
       lcd.setCursor(0, 1);
       lcd.print("your name?");
       delay(atime);
       lcd.clear();
   } 
   else if (val == 'x') 
   { 
    lcd.clear();
       lcd.print("Do you speak");
       lcd.setCursor(0, 1);
       lcd.print("English?");
       delay(atime);
       lcd.clear();
   } 
   else if (val == 'w') 
   { 
    lcd.clear();
       lcd.print("Excuse me");
       delay(atime);
       lcd.clear();
   } 
   else {
     lcd.print("Waiting for");
lcd.setCursor(0, 1);
       lcd.print("Input");
      lcd.clear();
   }}
 
   // Wait 10 milliseconds for next reading
}
void establishContact() {
  while (Serial.available() <= 0) {
  Serial.println("A");   // send a capital A
  delay(300);
  }
}


