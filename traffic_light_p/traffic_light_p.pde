import processing.serial.*;

Serial port;
int val1, val2 = 2;  // 0:Verd, 1:Tronja, 2:Vermell
int[] serialInArray = new int[2];    // Where we'll put what we receive
int serialCount = 0;                 // A count of how many bytes we receive

void setup(){
  background (255);
  size (800,600);

  println(Serial.list());
  String portName = Serial.list()[1];
  port = new Serial(this, portName, 9600);
}

void draw (){
  fill(0);  // Set fill to black
  rect(width/4-50, height/4+100, 100, 2*400/4+100, 100);
  fill(0);  // Set fill to black
  rect(3*width/4-250, height/4-50, 2*400/4+100, 100, 100);
  fill(0);  // Set fill to black
  rect(width/2-100, height/2-50, width, height, 50,0,0,0);
  fill(0);  // Set fill to black
  rect(0, 0, width, 50);
  fill(0);  // Set fill to black
  rect(0, height/2-50, 100, height, 0,50,0,0);

  if (val1 == 0){
    fill (34,0,0);
    ellipse (width/4, height/4+150, 70,70);
    fill (24,12,0);
    ellipse (width/4, height/4+250, 70,70);
    fill (0,255,0);
    ellipse (width/4, height/4+350, 70,70);
  }
  else if (val1 == 1){
    fill (34,0,0);
    ellipse (width/4, height/4+150, 70,70);
    fill (255,165,0);
    ellipse (width/4, height/4+250, 70,70);
    fill (0,17,0);
    ellipse (width/4, height/4+350, 70,70);
  }
  else{
    fill (255,0,0);
    ellipse (width/4, height/4+150, 70,70);
    fill (24,12,0);
    ellipse (width/4, height/4+250, 70,70);
    fill (0,17,0);
    ellipse (width/4, height/4+350, 70,70);
  } 
  if (val2 == 0){
    fill (34,0,0);
    ellipse (3*width/4-200, height/4, 70,70);
    fill (24,12,0);
    ellipse (3*width/4-100, height/4, 70,70);
    fill (0,255,0);
    ellipse (3*width/4, height/4, 70,70);
  }
  else if (val2 == 1){
    fill (34,0,0);
    ellipse (3*width/4-200, height/4, 70,70);
    fill (255,165,0);
    ellipse (3*width/4-100, height/4, 70,70);
    fill (0,17,0);
    ellipse (3*width/4, height/4, 70,70);
  }
  else{
    fill (255,0,0);
    ellipse (3*width/4-200, height/4, 70,70);
    fill (24,12,0);
    ellipse (3*width/4-100, height/4, 70,70);
    fill (0,17,0);
    ellipse (3*width/4, height/4, 70,70);
  }  
}

void serialEvent(Serial port) {
  // read a byte from the serial port:
  int inByte = port.read();
  serialInArray[serialCount] = inByte;
  serialCount++;
  if (serialCount > 1 ) {
    val1 = serialInArray[0];
    val2 = serialInArray[1];
    serialCount = 0;
  }  
}

