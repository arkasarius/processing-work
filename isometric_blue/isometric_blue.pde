r a;
void setup () {
  //size (800, 600);
  fullScreen();
  a= new r();
  background(255, 255, 255);
}

void draw() {
  work();
  shape(GRS(), random(width), random(height));
  //noLoop();
}
void work() {
  color x;
  x=color(0, 0, (int)random(255), random(20) );
  a.s.setFill(x);
  x=color(0, 0, (int)random(255), random(20) );
  a.l.setFill(x);
  x=color(0, 0, (int)random(255), random(20) );
  a.t.setFill(x);
  x=color(0, 0, (int)random(255), random(20) );
  a.r.setFill(x);
}
PShape GRS() {
  int k=(int)random(3);
  if (k==0) {
    return a.r;
  } else  if (k==1) {
    return a.l;
  } else {
    return a.t;
  }
}
