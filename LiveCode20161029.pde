import peasy.*;

PeasyCam cam;
int SZ = 200;
int GAP = 20;
float rx, ry, dx, dy;
int c0, d0, c1, d1, c2, d2, c3, d3, c4, d4, c5, d5;

void setup() {
  size(640, 480, OPENGL);
  cam = new PeasyCam(this, 0);
  colorMode(HSB, 360, 100, 100);
  dx = random(-.02, .02);
  dy = random(-.02, .02);
  d0 = (int)random(3);
  d1 = (int)random(3);
  d2 = (int)random(3);
  d3 = (int)random(3);
  d4 = (int)random(3);
  d5 = (int)random(3);
}

void draw() {
  background(frameCount % 360, 50, 50);
  rx += dx;
  ry += dy;
  rotateX(rx);
  rotateY(ry);
  strokeWeight(10);
  
  c0 += d0;
  stroke(c0 % 360, 100, 100, 50);
  for (int i = -SZ ; i <= SZ ; i += GAP) {
    line(i, -SZ, -SZ, i, SZ, -SZ);
  }
  c1 += d1;
  stroke(c1 % 360, 100, 100, 50);
  for (int i = -SZ ; i <= SZ ; i += GAP) {
    line(i, -SZ, SZ, i, SZ, SZ);
  }
  c2 += d2;
  stroke(c2 % 360, 100, 100, 50);
  for (int i = -SZ ; i <= SZ ; i += GAP) {
    line(i, -SZ, SZ, i, SZ, SZ);
  }
  c3 += d3;
  stroke(c3 % 360, 100, 100, 50);
  for (int i = -SZ ; i <= SZ ; i += GAP) {
    line(i, -SZ, -SZ, i, SZ, -SZ);
  }
  c4 += d4;
  stroke(c4 % 360, 100, 100, 50);
  for (int i = -SZ ; i <= SZ ; i += GAP) {
    line(SZ, i, -SZ, SZ, i, SZ);
  }
  c5 += d5;
  stroke(c5 % 360, 100, 100, 50);
  for (int i = -SZ ; i <= SZ ; i += GAP) {
    line(-SZ, i, -SZ, -SZ, i, SZ);
  }
}