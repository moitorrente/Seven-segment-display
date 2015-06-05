
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
  text("Buffer = "+buff[0]+","+buff[1]+","+buff[2], 20, 30);

  for (int i=0; i<numDisplay; i++) {
    segmentCalc(buff[i], i);
  }
}

void keyReleased() {
  for (int i=0; i<numDisplay-1; i++) {
    buff[i]=buff[i+1];
  }
  buff[numDisplay-1]=key;
}  

void segmentCalc(char _num, int _order) {
  int i=_order;
  int segmentColor=#9D3E3E;
  switch(_num) {
  case '1':
    segmentCollection[i].display(3, segmentColor);
    segmentCollection[i].display(6, segmentColor);
    break;
  case '2':
    segmentCollection[i].display(1, segmentColor);
    segmentCollection[i].display(3, segmentColor);
    segmentCollection[i].display(4, segmentColor);
    segmentCollection[i].display(5, segmentColor);
    segmentCollection[i].display(7, segmentColor);
    break;   
  case '3':
    segmentCollection[i].display(1, segmentColor);
    segmentCollection[i].display(3, segmentColor);
    segmentCollection[i].display(4, segmentColor);
    segmentCollection[i].display(6, segmentColor);
    segmentCollection[i].display(7, segmentColor);
    break;       
  case '4':
    segmentCollection[i].display(2, segmentColor);
    segmentCollection[i].display(3, segmentColor);
    segmentCollection[i].display(4, segmentColor);
    segmentCollection[i].display(6, segmentColor);
    break;
  case '5':
    segmentCollection[i].display(1, segmentColor);
    segmentCollection[i].display(2, segmentColor);
    segmentCollection[i].display(4, segmentColor);
    segmentCollection[i].display(6, segmentColor);
    segmentCollection[i].display(7, segmentColor);
    break;
  case '6':
    segmentCollection[i].display(1, segmentColor);
    segmentCollection[i].display(2, segmentColor);
    segmentCollection[i].display(4, segmentColor);
    segmentCollection[i].display(5, segmentColor);
    segmentCollection[i].display(6, segmentColor);
    segmentCollection[i].display(7, segmentColor);
    break;
  case '7':
    segmentCollection[i].display(1, segmentColor);
    segmentCollection[i].display(3, segmentColor);
    segmentCollection[i].display(6, segmentColor);
    break;   
  case '8':
    segmentCollection[i].display(1, segmentColor);
    segmentCollection[i].display(2, segmentColor);
    segmentCollection[i].display(3, segmentColor);
    segmentCollection[i].display(4, segmentColor);
    segmentCollection[i].display(5, segmentColor);
    segmentCollection[i].display(6, segmentColor);
    segmentCollection[i].display(7, segmentColor);
    break; 
  case '9':
    segmentCollection[i].display(1, segmentColor);
    segmentCollection[i].display(2, segmentColor);
    segmentCollection[i].display(3, segmentColor);
    segmentCollection[i].display(4, segmentColor);
    segmentCollection[i].display(6, segmentColor);
    segmentCollection[i].display(7, segmentColor);
    break;
  case '0':
    segmentCollection[i].display(1, segmentColor);
    segmentCollection[i].display(2, segmentColor);
    segmentCollection[i].display(3, segmentColor);
    segmentCollection[i].display(5, segmentColor);
    segmentCollection[i].display(6, segmentColor);
    segmentCollection[i].display(7, segmentColor);
    break;
  case 'A' :
  case 'a' :
    segmentCollection[i].display(1, segmentColor);
    segmentCollection[i].display(2, segmentColor);
    segmentCollection[i].display(3, segmentColor);
    segmentCollection[i].display(4, segmentColor);
    segmentCollection[i].display(5, segmentColor);
    segmentCollection[i].display(6, segmentColor);
    break;
  case 'C':
  case 'c':
    segmentCollection[i].display(1, segmentColor);
    segmentCollection[i].display(2, segmentColor);
    segmentCollection[i].display(5, segmentColor);
    segmentCollection[i].display(7, segmentColor);
    break;
  case 'E':
  case 'e':
    segmentCollection[i].display(1, segmentColor);
    segmentCollection[i].display(2, segmentColor);
    segmentCollection[i].display(4, segmentColor);
    segmentCollection[i].display(5, segmentColor);
    segmentCollection[i].display(7, segmentColor);
    break;   
  case 'F':
  case 'f':
    segmentCollection[i].display(1, segmentColor);
    segmentCollection[i].display(2, segmentColor);
    segmentCollection[i].display(4, segmentColor);
    segmentCollection[i].display(5, segmentColor);
    break;   
  case 'H':
  case 'h':
    segmentCollection[i].display(2, segmentColor);
    segmentCollection[i].display(3, segmentColor);
    segmentCollection[i].display(4, segmentColor);
    segmentCollection[i].display(5, segmentColor);
    segmentCollection[i].display(6, segmentColor);
    break;
  case 'I':
  case 'i':
    segmentCollection[i].display(2, segmentColor);
    segmentCollection[i].display(5, segmentColor);
    break;     
  case 'J':
  case 'j':
    segmentCollection[i].display(3, segmentColor);
    segmentCollection[i].display(6, segmentColor);
    segmentCollection[i].display(7, segmentColor);
    break;   
  case 'L':
  case 'l':
    segmentCollection[i].display(2, segmentColor);
    segmentCollection[i].display(5, segmentColor);
    segmentCollection[i].display(7, segmentColor);
    break;     
  case 'P':
  case 'p':
    segmentCollection[i].display(1, segmentColor);
    segmentCollection[i].display(2, segmentColor);
    segmentCollection[i].display(3, segmentColor);
    segmentCollection[i].display(4, segmentColor);
    segmentCollection[i].display(5, segmentColor);    
    break;
  case 'S':
  case 's':
    segmentCollection[i].display(1, segmentColor);
    segmentCollection[i].display(2, segmentColor);
    segmentCollection[i].display(4, segmentColor);
    segmentCollection[i].display(6, segmentColor);    
    segmentCollection[i].display(7, segmentColor);
    break;
  case 'U':
  case 'u':
    segmentCollection[i].display(2, segmentColor);
    segmentCollection[i].display(3, segmentColor);
    segmentCollection[i].display(5, segmentColor);
    segmentCollection[i].display(6, segmentColor);    
    segmentCollection[i].display(7, segmentColor);
    break;     
  default:
  }
}
