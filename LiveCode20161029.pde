PeasyCam cam;

void setup() {
  size(640, 480, OPENGL);
  colorMode(HSB, 360, 100, 100);
}

void draw() {
  background(frameCount % 360, 50, 50);
}