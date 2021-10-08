int size_x = 600;
int size_y = 400;

void setup(){
  size(600, 400);
  noStroke();
}

void draw(){
  int rect_size = 10;
  for (int x = 0 ; x <= size_x ; x += rect_size) {
    for (int y = 0 ; y <= size_x ; y += rect_size) {
      fill(random(255), random(255), random(255));
      rect(x, y, x + size_x, size_y);
    }
  }
}
