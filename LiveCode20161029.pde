import peasy.*;

PeasyCam cam;
int SZ = 200;
int GAP = 10;
float rx, ry, dx, dy;

void setup() {
  size(640, 480, OPENGL);
  cam = new PeasyCam(this, 500);
  colorMode(HSB, 360, 100, 100);
  dx = random(-.02, .02);
  dy = random(-.02, .02);
}

void draw() {
  background(frameCount % 360, 50, 50);
  rx += dx;
  ry += dy;
  rotateX(rx);
  rotateY(ry);
  
  for (int i = -SZ ; i < SZ ; i += GAP) {
    line(i, -SZ, i, SZ);
  }
}