PFont fontInfor;
display myDisplay;
display myDisplay2;
char buff[];
int displayNum = 5;
float segmentX=1; //longitudes de los segmentos, "solo valido" para <1
float segmentY=1; //
int displayColor=1;
int offsetX=0;
int offsetY=0;

void setup() {  
  size(1100, 800);
  background(255);
  smooth();
  noStroke();
  fontInfor = createFont("Arial", 20, true);
  myDisplay = new display(displayNum, segmentX, segmentY, offsetX, offsetY, displayColor);
  myDisplay2 = new display(displayNum, segmentX, segmentY, offsetX, 400, displayColor);
}

void draw() { 
  background(245);
  myDisplay.run();
  myDisplay2.run();
}

void keyReleased() {
  for (int i=0; i<displayNum-1; i++) {
    buff[i]=buff[i+1];
  }
  buff[displayNum-1]=key;
}
