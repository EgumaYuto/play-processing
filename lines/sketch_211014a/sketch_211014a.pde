void setup() {
   size(800, 800);
   // noLoop();
   background(0);
}

void draw() {
  float num = 32;
  
  fill(0, num);
  rect(0, 0, width, height);
  translate(width/2, height/2);
  
  float baseAngle = frameCount*PI/360.0;
  rotate(baseAngle);
  
  
  for (int i = 0; i < num; i++) {
    rotate(2*PI/num);

    stroke(239, 224, 181);
    line(width/24, height/20, width/4, height/4);
    stroke(168, 183, 205);
    line(width/20, height/16, width/4, height/4);
    stroke(239, 195, 181);
    line(width/16, height/8, width/4, height/4);
    stroke(181, 239, 224);
    line(width/8, height/4, width/4, height/4);
    
    stroke(181, 239, 224);
    line(width/20, height/24, width/4, height/4);
    stroke(239, 195, 181);
    line(width/16, height/20, width/4, height/4);
    stroke(168, 183, 205);
    line(width/8, height/16, width/4, height/4);
    stroke(239, 224, 181);
    line(width/4, height/8, width/4, height/4);    
  }
  
  saveFrame("frames/####.png");
  if (frameCount >= 300) {
    exit();
  }
}
