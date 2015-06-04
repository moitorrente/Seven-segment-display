
PFont fontInfor;
int numDisplay = 3; 
segment [] segmentCollection = new segment[numDisplay];
char [] buff = new char[numDisplay]; 
int counter=0;

void setup() {  
  size(800, 400);
  background(255);
  smooth();
  noStroke();
  fontInfor = createFont("Arial", 20, true);
  for (int i = 0; i < numDisplay; i++) { 
    segmentCollection[i]= new segment(i*(200*1), 0, 1, 1); 
    buff[i]='0';
  }
}

void draw() { 
  background(245);
  for (int i=0; i<numDisplay; i++) {
    segmentCollection[i].shade();
  }
  fill(0);
  text("counter = "+counter, 20, 20);
  text("buff = "+buff[0]+","+buff[1]+","+buff[2], 20, 30);

  for (int i=0; i<numDisplay; i++) {
    segmentCalc(buff[i], i);
  }
}

void keyReleased() {
  for (int i=0; i<numDisplay-1; i++){
     buff[i]=buff[i+1];
  }
  buff[numDisplay-1]=key;
}  

void segmentCalc(char _num, int _order) {
  int i=_order;
  switch(_num) {
  case '1':
    segmentCollection[i].display(3, 0);
    segmentCollection[i].display(6, 0);
    break;
  case '2':
    segmentCollection[i].display(1, 0);
    segmentCollection[i].display(3, 0);
    segmentCollection[i].display(4, 0);
    segmentCollection[i].display(5, 0);
    segmentCollection[i].display(7, 0);
    break;   
  case '3':
    segmentCollection[i].display(1, 0);
    segmentCollection[i].display(3, 0);
    segmentCollection[i].display(4, 0);
    segmentCollection[i].display(6, 0);
    segmentCollection[i].display(7, 0);
    break;       
  case '4':
    segmentCollection[i].display(2, 0);
    segmentCollection[i].display(3, 0);
    segmentCollection[i].display(4, 0);
    segmentCollection[i].display(6, 0);
    break;
  case '5':
    segmentCollection[i].display(1, 0);
    segmentCollection[i].display(2, 0);
    segmentCollection[i].display(4, 0);
    segmentCollection[i].display(6, 0);
    segmentCollection[i].display(7, 0);
    break;
  case '6':
    segmentCollection[i].display(1, 0);
    segmentCollection[i].display(2, 0);
    segmentCollection[i].display(4, 0);
    segmentCollection[i].display(5, 0);
    segmentCollection[i].display(6, 0);
    segmentCollection[i].display(7, 0);
    break;
  case '7':
    segmentCollection[i].display(1, 0);
    segmentCollection[i].display(3, 0);
    segmentCollection[i].display(6, 0);
    break;   
  case '8':
    segmentCollection[i].display(1, 0);
    segmentCollection[i].display(2, 0);
    segmentCollection[i].display(3, 0);
    segmentCollection[i].display(4, 0);
    segmentCollection[i].display(5, 0);
    segmentCollection[i].display(6, 0);
    segmentCollection[i].display(7, 0);
    break; 
  case '9':
    segmentCollection[i].display(1, 0);
    segmentCollection[i].display(2, 0);
    segmentCollection[i].display(3, 0);
    segmentCollection[i].display(4, 0);
    segmentCollection[i].display(6, 0);
    segmentCollection[i].display(7, 0);
    break;
  case '0':
    segmentCollection[i].display(1, 0);
    segmentCollection[i].display(2, 0);
    segmentCollection[i].display(3, 0);
    segmentCollection[i].display(5, 0);
    segmentCollection[i].display(6, 0);
    segmentCollection[i].display(7, 0);
    break;
  default:
  
  }
}
