import processing.serial.*; //import the Serial library
import java.io.IOException;
PFont f;
String input;
String buffer="";
String speaker="";
int language=0;

  
char name;
 Serial myPort;  //the Serial port object
 String val;
 int atime=1000;
 char speak;
// since we're doing serial handshaking, 
// we need to check if we've heard from the microcontroller
boolean firstContact = false;
void setup() {
  size(1300, 768); //make our canvas 200 x 200 pixels big
  //  initialize your serial port and set the baud rate to 9600
  f = createFont("Arial",200,true);
  myPort = new Serial(this, Serial.list()[2], 9600);
  myPort.bufferUntil('\n'); 
  speak=getChar("Country:");
  if (speak=='d'){
    speaker="Alex";
    say("You have selected America", speaker, 200);
  }
  if (speak=='k'){
    speaker="Daniel";
    say("You have selected United Kingdom", speaker, 200);
  }
  if (speak=='g'){
    speaker="Thomas";
    say("You have selected France", speaker, 200);
  }
  if (speak=='i'){
    speaker="Markus";
    say("You have selected Germany", speaker, 200);
  }
  if (speak=='j'){
    speaker="Lee";
    say("You have selected Australia", speaker, 200);
  }
  if (speak=='a'){
    speaker="Yuri";
    say("You have selected Russia", speaker, 200);
  }
  if (speak=='e'){
    speaker="Thomas";
    say("You have selected Spain", speaker, 200);
  }
  

}
void draw() {
  textFont(f);
  background(255);
  stroke(175);
  fill(0);
  textAlign(CENTER);
        name=getChar("Enter Gesture:");


  if (name=='a') 
    {    

        text("Hello",width/2,200);
        
    }
    else if (name=='b') 
    {                           //if we clicked in the window
       text("Goodbye",width/2,200);

    }
    else if (name=='c') 
    {                           //if we clicked in the window
                  textFont(createFont("Arial",80,true));

        text("Where is the closest restaurant?",width/2,200);

    }
    else if (name=='d') 
    {    
              textFont(createFont("Arial",100,true));
        text("I need help, Call 911!",width/2,200);
    }
    else if (name=='e') 
    {     
      textFont(createFont("Arial",100,true));
        text("What is your name?",width/2,200);

    }
    else if (name=='f') 
    {                  textFont(createFont("Arial",80,true));

        text("Where is the closest Bus Station?",width/2,200);
    }
    else if (name=='g') 
    {     textFont(createFont("Arial",100,true));
        text("Do you speak english?",width/2,200);
    }
    else if (name=='h') 
    {          
                    textFont(createFont("Arial",100,true));

      text("What time is it?",width/2,200);
    }
    else if (name=='i') 
    { 
      textFont(createFont("Arial",80,true));
        text("Where is the closest washroom?",width/2,200);
    }
    if (name=='j') 
    {   
        textFont(createFont("Arial",100,true));

        text("Excuse me",width/2,200);
    }
    else if (name=='k') 
    {  
         textFont(createFont("Arial",100,true));

         text("Sorry",width/2,200);
    }
   /* if (val.equals("l")) 
    {        
         text("Hotel",width/2,768/2);
    }
    if (val.equals("m")) 
    {                           //if we clicked in the window
      textFont(createFont("Arial",100,true));
      text("Can I use your phone?",width/2,768/2);
    }*/
    else if (name=='n') 
    {           
            text("Thank You",width/2,200);
    }
    /*if (val.equals("o")) 
    {                           //if we clicked in the window
                  text("Water",width/2,768/2);

    }*/
    else if (name=='p') 
    {                           //if we clicked in the window
textFont(createFont("Arial",100,true));
      text("I love Digiflare",width/2,200);
    }
  

}


void serialEvent( Serial myPort) {
//put the incoming data into a String - 
//the '\n' is our end delimiter indicating the end of a complete packet
val = myPort.readStringUntil('\n');
//make sure our data isn't empty before continuing
if (val != null) {
  //trim whitespace and formatting characters (like carriage return)
  val = trim(val);
  println(val);

  //look for our 'A' string to start the handshake
  //if it's there, clear the buffer, and send a request for data
  if (firstContact == false) {
    if (val.equals("A")) {
      myPort.clear();
      firstContact = true;
      myPort.write("A");
      println("contact");
    }
  }
  else { //if we've already established contact, keep getting and parsing data
    println(val);
    if ((name=='a')) {
      buffer="a";
      val=buffer;
      myPort.write('1');
      
    }
    
    else if ((name=='b')) {
      buffer="b";
      val=buffer;
      myPort.write('2');
            

    }
    else if ((name=='c')) {
      buffer="c";
      val=buffer;
      myPort.write('3');
          

    }
     else if ((name=='d')) {
      buffer="d";
      val=buffer;
      myPort.write('4');
           

    }
    else if ((name=='e')) {
      buffer="e";
      val=buffer;
      myPort.write('y');
           

    }
     else if ((name=='f')) {
      buffer="f";
      val=buffer;
      myPort.write('5');
            

    }
    else if ((name=='g')) {
      buffer="g";
      val=buffer;
      myPort.write('x');
            

    }
    else if ((name=='h')) {
      buffer="h";
      val=buffer;
      myPort.write('6');
        

    }
     else if ((name=='i')) {
      buffer="i";
      val=buffer;
      myPort.write('7');
        

    }
    else if ((name=='j')) {
      buffer="j";
      val=buffer;
      myPort.write('w');
        

    }
     else if ((name=='k')) {
      buffer="k";
      val=buffer;
      myPort.write('8');
            

    }
     else if ((name=='n')) {
      buffer="n";
      val=buffer;
      myPort.write('9');
            

    }
     else if ((name=='p')) {
      buffer="p";
      val=buffer;
      myPort.write('0');
            

    }
    
    
    
    
    
    
    
    
    
    
    
    if (val.equals("a")) 
    {                           //if we clicked in the window
      say("hello", speaker, 200);
      delay(atime);
      val="";
      name='z';
    }
    else if (val.equals("b")) 
    {                           //if we clicked in the window
      say("Goodbye", speaker, 200);
     // println("f");
      delay(atime);
            val="";
            name='z';


    }
    else if (val.equals("c")) 
    {                           //if we clicked in the window
      say("Where is the closest restaurant", speaker, 200);
    //  println("f");
      delay(atime);
            val="";
name='z';
    }
    else if (val.equals("d")) 
    {                           //if we clicked in the window
      say("I need help, Call 911", speaker, 200);
    //  println("f");
      delay(atime);
            val="";
name='z';
    }
    else if (val.equals("e")) 
    {                           //if we clicked in the window
      say("What is your name", speaker, 200);
    //  println("f");
      delay(atime);
            val="";
name='z';
    }
    else if (val.equals("f")) 
    {                           //if we clicked in the window
      say("where is the Closest Bus Station", speaker, 200);
    //  println("f");
      delay(atime);
            val="";
name='z';
    }
     else if (val.equals("g")) 
    {                           //if we clicked in the window
      say("Do you speak english", speaker, 200);
    //  println("f");
      delay(atime);
            val="";
name='z';
    }
   
    else if (val.equals("h")) 
    {                           //if we clicked in the window
      say("What time is it", speaker, 200);
     // println("f");
      delay(atime);
            val="";
name='z';
    }
    else if (val.equals("i")) 
    {                           //if we clicked in the window
      say("where is the closest Washroom", speaker, 200);
    //  println("f");
      delay(atime);
            val="";
name='z';
    }
   else if (val.equals("j")) 
    {                           //if we clicked in the window
      say("Excuse me", speaker, 200);
    //  println("f"a

      delay(atime);
            val="";
name='z';
    }
    else if (val.equals("k")) 
    {                           //if we clicked in the window
      say("Sorry", speaker, 200);
    //  println("f");
      delay(atime);
            val="";
name='z';
    }
  
   
    else if (val.equals("n")) 
    {                           //if we clicked in the window
      say("Thank You", speaker, 200);
    //  println("f");
      delay(atime);
            val="";
name='z';
    }

    else if (val.equals("p")) 
    {                           //if we clicked in the window
      say("I love digiflare", speaker, 200);
     // println("f");
      delay(atime);
            val="";
name='z';
    }

    // when you've parsed the data you have, ask for more:
    myPort.write("A");
         // text("",width/2768/2); 

    }
  }
}

void say(String script, String voice, int speed) {
  try {
    Runtime.getRuntime().exec(new String[] {
      "say", "-v", voice, "[[rate " + speed + "]]" + script
    }
    );
  }
  catch (IOException e) {
    System.err.println("IOException");
  }
}