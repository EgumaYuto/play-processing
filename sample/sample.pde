void setup() {
  size(640, 480);
  noStroke();
  background(0);
}

void draw() {
  int width = 640;
  int height = 480;
  int center_x = width / 2;
  int center_y = height/ 2;
  
  background(0);
  for (int i = 0; i < 1080; i++) {
    float r = random(10);
    float dist = random(height - center_y - 30);
    fill(random(255) ,random(255), random(255));
    ellipse(center_x + dist * cos(i), center_y + dist * sin(i), r, r);
  }
  
  saveFrame("frames/####.png");
   
  if (frameCount >= 600) { // 1800コマアニメーションした時
    exit();
  }
}
