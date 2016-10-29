import peasy.*;

PeasyCam cam;
int SZ = 200;
int GAP = 10;


void setup() {
  size(640, 480, OPENGL);
  colorMode(HSB, 360, 100, 100);
}

void draw() {
  background(frameCount % 360, 50, 50);
  
  for (int i = -SZ, i < SZ ; i += GAP) {
    line(i, -SZ, i, SZ);
  }
}