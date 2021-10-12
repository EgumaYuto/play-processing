
PImage img;

void setup() {
  size(960, 960);
  img = loadImage("map.jpg");
  img.loadPixels();
  noLoop();
  noStroke();
}

void draw() {
  background(0);
  // image(img, 0, 0, width, height);
  int rate = 10;
    
  for (int i = 0; i < img.width/rate; i++) {
    for (int j = 0; j < img.height/rate; j++) {
      color pix = img.get(i * rate, j * rate);
      
      if (pix == color(255)) {
        fill(0);
      } else {
        fill(255);
      }
      
      circle(i * rate + rate/2, j * rate + rate/2, rate);
      // print(i, j, img.get(i * rate, j * rate), "\n");
    }
  }
}
