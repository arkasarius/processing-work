public class r
{
  int x1, x2, y1, y2, z1, z2, w1, w2;
  int costat;
  PShape s;
  PShape l, t, r;
  r() {
    costat=100;
    x1=-costat/2;
    x2=-costat/2;
    y1=costat/2;
    y2=-costat/2;
    z1=costat/2;
    z2=costat/2;
    w1=-costat/2;
    w2=costat/2;
    s = createShape();
    s.beginShape();
    s.noStroke();
    s.fill(255, 0, 0);
    s.vertex(x1, x2);
    s.vertex(y1, y2);
    s.vertex(z1, z2);
    s.vertex(w1, w2);
    s.endShape(CLOSE);
    
    l = createShape();
    l.beginShape();
    l.noStroke();
    l.fill(0, 255, 0);
    l.vertex(-43, -75);
    l.vertex(43, -25);
    l.vertex(43, 75);
    l.vertex(-43, 25);
    l.endShape(CLOSE);
    //50 87
    t = createShape();
    t.beginShape();
    t.fill(0, 0, 255);
    t.noStroke();
    t.vertex(0, -50);
    t.vertex(87, 0);
    t.vertex(0, 50);
    t.vertex(-87, 0);
    t.endShape(CLOSE);
    //r
    r = createShape();
    r.beginShape();
    r.noStroke();
    r.fill(255, 0, 255);
    r.vertex(-43, -25);
    r.vertex(43, -75);
    r.vertex(43, 25);
    r.vertex(-43, 75);
    r.endShape(CLOSE);
  }
}
