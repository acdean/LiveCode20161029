import peasy.*;
import com.jogamp.opengl.*;  // new jogl - 3.0b7

PeasyCam cam;
int SZ = 200;
int GAP = 20;
Cage cage1 = new Cage();
Cage cage2 = new Cage();

void setup() {
  size(640, 480, OPENGL);
  cam = new PeasyCam(this, 0);
  colorMode(HSB, 360, 100, 100);
}

void draw() {
  background(frameCount % 360, 50, 50);

  // PJOGL 2.2.1, 30b7
  GL gl = ((PJOGL)beginPGL()).gl.getGL();

  // additive blending
  gl.glEnable(GL.GL_BLEND);
  gl.glBlendFunc(GL.GL_SRC_ALPHA, GL.GL_ONE);
  gl.glDisable(GL.GL_DEPTH_TEST);

  cage1.draw();
  cage2.draw();
}

class Cage {
  int c0, d0, c1, d1, c2, d2, c3, d3, c4, d4, c5, d5;
  float dx, rx, dy, ry;
  float scale;

  Cage() {
    scale = random(.5, 1);
    dx = random(-.02, .02);
    dy = random(-.02, .02);
    d0 = (int)random(5);
    d1 = (int)random(5);
    d2 = (int)random(5);
    d3 = (int)random(5);
    d4 = (int)random(5);
    d5 = (int)random(5);
    c0 = (int)random(360);
    c1 = (int)random(360);
    c2 = (int)random(360);
    c3 = (int)random(360);
    c4 = (int)random(360);
    c5 = (int)random(360);
  }

  void draw() {
    rx += dx;
    ry += dy;

    scale(scale);
    rotateX(rx);
    rotateY(ry);

    strokeWeight(10);

    c0 += d0;
    stroke(c0 % 360, 100, 100);
    for (int i = -SZ; i <= SZ; i += GAP) {
      line(i, -SZ, -SZ, i, SZ, -SZ);
    }
    c1 += d1;
    stroke(c1 % 360, 100, 100);
    for (int i = -SZ; i <= SZ; i += GAP) {
      line(i, -SZ, SZ, i, SZ, SZ);
    }
    c2 += d2;
    stroke(c2 % 360, 100, 100);
    for (int i = -SZ; i <= SZ; i += GAP) {
      line(i, SZ, -SZ, i, SZ, SZ);
    }
    c3 += d3;
    stroke(c3 % 360, 100, 100);
    for (int i = -SZ; i <= SZ; i += GAP) {
      line(i, -SZ, -SZ, i, -SZ, SZ);
    }
    c4 += d4;
    stroke(c4 % 360, 100, 100);
    for (int i = -SZ; i <= SZ; i += GAP) {
      line(SZ, i, -SZ, SZ, i, SZ);
    }
    c5 += d5;
    stroke(c5 % 360, 100, 100);
    for (int i = -SZ; i <= SZ; i += GAP) {
      line(-SZ, i, -SZ, -SZ, i, SZ);
    }
  }
}

void keyPressed() {
  saveFrame("frame####.png");
}