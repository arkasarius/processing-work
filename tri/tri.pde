color[] colors;
public class r {
  PShape a, b, c, d;
  r() {
    a = createShape();
    a.beginShape();
    a.noStroke();
    a.fill(255, 0, 0);
    a.vertex(-25, -25);
    a.vertex(25, -25);
    a.vertex(0, 0);
    a.endShape(CLOSE);

    b = createShape();
    b.beginShape();
    b.noStroke();
    b.fill(0, 255, 0);
    b.vertex(25, -25);
    b.vertex(25, 25);
    b.vertex(0, 0);
    b.endShape(CLOSE);

    c = createShape();
    c.beginShape();
    c.noStroke();
    c.fill(0, 0, 255);
    c.vertex(-25, 25);
    c.vertex(0, 0);
    c.vertex(25, 25);
    c.endShape(CLOSE);

    d = createShape();
    d.beginShape();
    d.noStroke();
    d.fill(255, 255, 0);
    d.vertex(-25, -25);
    d.vertex(0, 0);
    d.vertex(-25, 25);
    d.endShape(CLOSE);
  }
}
r a;
void setup() {
  size(1000, 1000);
  background(255);
  a= new r();
  colors=new color[]{#EA4E35, #5c3f2f, #e5ad50, #594a47, #404445, #8cb690, #8cb690, #ed2d3a};
}
void draw() {
  for (int i=25; i<800; i+=50) {
    for (int j=25; j<1000; j+=50) {
      paint(i, j);
    }
  }
  noLoop();
}
void paint(int x, int y) {
  setColors();
  if (x<=500) {
    shape(a.a, x, y);
    shape(a.b, x, y);
    shape(a.c, x, y);
    shape(a.d, x, y);
  } else if (x>500&& x<700) {
    float r=random(10);
    if (r>8.5) {
      shape(a.b, x, y);
      shape(a.c, x, y);
      shape(a.d, x, y);
    } else {
      shape(a.a, x, y);
      shape(a.b, x, y);
      shape(a.c, x, y);
      shape(a.d, x, y);
    }
  } else if (x>700&& x<900) {
    float r=random(10);
    if (r>6.5) {
      shape(a.d, x, y);
    } else {
      shape(a.a, x, y);
      shape(a.d, x, y);
    }
  } else if (x>900) {
    float r=random(10);
    if (r>9) {
      shape(a.d, x, y);
    }
  }
}
void setColors() {
  color t;
  t=colors[(int)random(colors.length)];
  a.a.setFill(t);
  t=colors[(int)random(colors.length)];
  a.b.setFill(t);
  t=colors[(int)random(colors.length)];
  a.c.setFill(t);
  t=colors[(int)random(colors.length)];
  a.d.setFill(t);
}
