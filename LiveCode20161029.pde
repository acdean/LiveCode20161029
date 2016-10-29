import peasy.*;

PeasyCam cam;
int SZ = 200;
int GAP = 10;
float rx, ry, dx, dy;
int c0, d0;

void setup() {
  size(640, 480, OPENGL);
  cam = new PeasyCam(this, 500);
  colorMode(HSB, 360, 100, 100);
  dx = random(-.02, .02);
  dy = random(-.02, .02);
  d0 = (int)random(3);
}

void draw() {
  background(frameCount % 360, 50, 50);
  rx += dx;
  ry += dy;
  rotateX(rx);
  rotateY(ry);
  
  c0 += d0;
  stroke(c0 % 360);
  for (int i = -SZ ; i < SZ ; i += GAP) {
    line(i, -SZ, i, SZ);
  }
}