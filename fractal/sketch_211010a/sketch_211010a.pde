void setup() {
  size(3840, 2160);
  stroke(255);
  // noLoop();
}

void drawKoch(int begin_x, int begin_y, int end_x, int end_y, int n) {
  if (n <= 0) {
     line(begin_x, begin_y, end_x, end_y);
     return;
  }
  
  // begin -> a
  // a -> b
  // b -> c
  // c -> end
  
  int a_x = (2*begin_x + end_x)/3;
  int a_y = (2*begin_y + end_y)/3;
  
  int c_x = (begin_x + 2*end_x)/3;
  int c_y = (begin_y + 2*end_y)/3;
  
  int b_x, b_y;
  int xx = end_x - begin_x;
  int yy = - (end_y - begin_y);
  float distanse = sqrt(xx*xx + yy*yy)/sqrt(8);
  if (xx >= 0) { // 右上がりの場合
    float angle = atan((float)yy/xx) + PI/3;
    b_x = a_x + (int)(distanse * cos(angle));
    b_y = a_y - (int)(distanse * sin(angle));
  } else {
    float angle = atan((float)yy/xx) - PI/3;
    b_x = c_x + (int)(distanse * cos(angle));
    b_y = c_y - (int)(distanse * sin(angle));
  }
  
  drawKoch(begin_x, begin_y, a_x, a_y, n - 1);
  drawKoch(a_x, a_y, b_x, b_y, n - 1);
  drawKoch(b_x, b_y, c_x, c_y, n - 1);
  drawKoch(c_x, c_y, end_x, end_y, n - 1);
}

void draw() {
  background(0);
  
  drawKoch(0, 3*height/4, width, 3*height/4, frameCount);
  
  saveFrame("frames/###.png");
  if (frameCount>=15){
    exit();
  }
}
