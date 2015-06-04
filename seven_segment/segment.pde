class segment {
  float segmentLarge = 120;
  float segmentShort = 25;
  int position=1;
  float x;
  float y;
  float posdx;
  float posdy;
  boolean horizontal=false;
  int col;

  segment(float _posdx, float _posdy, float _x, float _y) {
    posdx = _posdx;
    posdy = _posdy;
    x = _x;
    y = _y;
    segmentLarge *= _x;
    segmentShort *= _y;
  }

  void shade()
  {
    for (int i = 1; i<8; i++) {
      display(i, 200);
    }
  } 


  void display(int _position, int _col) { 
    position = _position;
    col = _col;

    switch(position) {
    case 1:
      x = 50+segmentShort;
      y = 40;
      horizontal = true;
      break; 
    case 2:
      x = 50;
      y = 40+segmentShort;
      horizontal = false;
      break; 
    case 3:
      x = 50+segmentLarge+segmentShort;
      y = 40+segmentShort;
      horizontal = false;
      break; 
    case 4:
      x = 50+segmentShort;
      y = 40+segmentShort+segmentLarge;
      horizontal = true;
      break;   
    case 5:
      x = 50;
      y = 40+segmentLarge+2*segmentShort;
      horizontal = false;
      break; 
    case 6:
      x = 50+segmentLarge+segmentShort;
      y = 40+segmentLarge+2*segmentShort;
      horizontal = false;
      break; 
    case 7:
      x = 50+segmentShort;
      y = 40+2*segmentLarge+2*segmentShort;
      horizontal = true;
      break;
    }
    fill(col);
    if (horizontal) {
      rect(x+posdx, y+posdy, segmentLarge, segmentShort);
    } else {
      rect(x+posdx, y+posdy, segmentShort, segmentLarge);
    }
  }
}
