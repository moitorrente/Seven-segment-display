class display {
  int numDisplay;
  int segmentColor=#9D3E3E;
  int [] displayColor = {#000000,#9D3E3E,#2F4BF5, #FAE738, #66E06F};
  segment [] segmentCollection;
  float x;
  float y;

  display(int _numDisplay, float _x, float _y, int _offsetX, int _offsetY, int _posColor) {
    numDisplay = _numDisplay;
    x = _x;
    y = _y;
    segmentColor = displayColor[_posColor];
    buff = new char[numDisplay]; 
    segmentCollection = new segment[numDisplay];
    for (int i = 0; i < numDisplay; i++) { 
      segmentCollection[i]= new segment((i*200)+_offsetX, _offsetY, x, y); 
      buff[i]='0';
    }
  }

  void run(){
   shade();
   displaySevenSegments();
  }

  void shade() {
    for (int i=0; i<numDisplay; i++) {
      segmentCollection[i].shade();
    }
  }

  void displaySevenSegments() {
    for (int i=0; i<numDisplay; i++) {
      segmentCalc(buff[i], i);
    }
  }

  void segmentCalc(char _num, int _order) {
    int i=_order;

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
}
